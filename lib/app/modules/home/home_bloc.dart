import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:modular_triple/app/modules/clientes/clientes_bloc.dart';
import 'package:modular_triple/app/modules/users/users_bloc.dart';

class HomeBloc extends StreamStore<Exception, Object> implements Disposable {
  final UsersBloc usersBloc;
  final ClientesBloc clientesBloc;

  HomeBloc(this.usersBloc, this.clientesBloc) : super(null) {
    usersBloc.init();
    clientesBloc.init();
  }

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    usersBloc.destroy();
    clientesBloc.destroy();
  }
}
