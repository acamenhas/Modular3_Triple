import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:modular_triple/app/app_widget.dart';
import 'package:modular_triple/app/modules/home/home_bloc.dart';
import 'package:modular_triple/app/modules/home/home_module.dart';
import 'package:modular_triple/app/modules/users/users_bloc.dart';
import 'package:modular_triple/app/modules/users/users_repository.dart';

import 'modules/clientes/clientes_bloc.dart';
import 'modules/clientes/clients_repository.dart';
import 'shared/custom_hasura_connect.dart';

class AppModule extends MainModule {
  @override
  final List<Bind> binds = [
    Bind((i) => CustomHasuraConnect.getConnect()),
    Bind((i) => ClientsRepository(i.get())),
    Bind((i) => UsersRepository(i.get())),
    Bind((i) => ClientesBloc(i.get())),
    Bind((i) => UsersBloc(i.get())),
    Bind((i) => HomeBloc(i.get(), i.get()))
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
  ];

  @override
  Widget get bootstrap => AppWidget();
}
