import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_triple/app/app_module.dart';
import 'package:modular_triple/app/modules/users/users_bloc.dart';
import 'package:modular_triple/app/modules/users/users_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(UsersModule());
  UsersBloc bloc;

  // setUp(() {
  //     bloc = UsersModule.to.get<UsersBloc>();
  // });

  // group('UsersBloc Test', () {
  //   test("First Test", () {
  //     expect(bloc, isInstanceOf<UsersBloc>());
  //   });
  // });
}
