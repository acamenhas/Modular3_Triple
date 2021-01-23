import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_triple/app/app_module.dart';
import 'package:modular_triple/app/modules/clientes/clientes_bloc.dart';
import 'package:modular_triple/app/modules/clientes/clientes_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(ClientesModule());
  ClientesBloc bloc;

  // setUp(() {
  //     bloc = ClientesModule.to.get<ClientesBloc>();
  // });

  // group('ClientesBloc Test', () {
  //   test("First Test", () {
  //     expect(bloc, isInstanceOf<ClientesBloc>());
  //   });
  // });
}
