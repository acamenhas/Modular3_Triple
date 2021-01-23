import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:modular_triple/app/modules/users/user_model.dart';
import 'package:modular_triple/app/modules/users/users_repository.dart';

class UsersBloc extends StreamStore<Exception, List<UserModel>>
    implements Disposable {
  final UsersRepository repository;
  UsersBloc(this.repository) : super(List<UserModel>());

  Snapshot<List<UserModel>> snapshot;

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
