import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';

import 'client_document.dart';
import 'client_model.dart';

@Injectable()
class ClientsRepository implements Disposable {
  final HasuraConnect connect;

  ClientsRepository(this.connect);

  Snapshot snapshot;

  Future<Snapshot<List<ClientModel>>> getAll() async {
    snapshot = await connect.subscription(subscriptionAllClients);

    return snapshot.map((data) {
      if (data == null) {
        return null;
      }
      return ClientModel.fromJsonList(data["data"]["llcl_clients"]);
    });
  }

  //dispose will be called automatically
  @override
  void dispose() {
    snapshot.close();
  }
}
