import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:modular_triple/app/modules/users/user_document.dart';
import 'package:modular_triple/app/modules/users/user_model.dart';

@Injectable()
class UsersRepository extends Disposable {
  HasuraConnect connect;

  UsersRepository(this.connect);

  Snapshot snapshot;

  Future<Snapshot<List<UserModel>>> getAll() async {
    snapshot = await connect.subscription(subscriptionAllUsers);

    return snapshot.map((data) {
      if (data == null) {
        return null;
      }
      return UserModel.fromJsonList(data["data"]["llcl_users"]);
    });
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
