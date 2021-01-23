import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_triple/app/app_module.dart';
import 'package:modular_triple/app/modules/produtos/produtos_bloc.dart';
import 'package:modular_triple/app/modules/produtos/produtos_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(ProdutosModule());
  ProdutosBloc bloc;

  // setUp(() {
  //     bloc = ProdutosModule.to.get<ProdutosBloc>();
  // });

  // group('ProdutosBloc Test', () {
  //   test("First Test", () {
  //     expect(bloc, isInstanceOf<ProdutosBloc>());
  //   });
  // });
}
