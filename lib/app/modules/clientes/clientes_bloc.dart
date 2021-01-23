import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:hasura_connect/hasura_connect.dart';

import 'client_model.dart';
import 'clients_repository.dart';

class ClientesBloc extends StreamStore<Exception, List<ClientModel>>
    implements Disposable {
  final ClientsRepository repository;
  ClientesBloc(this.repository) : super(List<ClientModel>());

  Snapshot<List<ClientModel>> snapshot;

  Future init() async {
    snapshot = await repository.getAll();
    await for (var value in snapshot) {
      update(value);
    }
  }

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {}
}
