import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:modular_triple/app/modules/clientes/client_model.dart';
import 'package:modular_triple/app/modules/home/home_bloc.dart';
import 'package:modular_triple/app/modules/users/user_model.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeBloc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            ScopedBuilder(
                store: store.usersBloc,
                onState: (context, state) => Expanded(
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: state.length,
                          itemBuilder: (BuildContext ctxt, int index) {
                            UserModel user = state[index];
                            return ListTile(
                              leading: Icon(Icons.supervisor_account),
                              title: Text(
                                user.name,
                              ),
                              trailing: Icon(
                                Icons.chevron_right,
                              ),
                            );
                          }),
                    )),
            Divider(
              height: 30,
            ),
            ScopedBuilder(
                store: store.clientesBloc,
                onState: (context, state) => Expanded(
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: state.length,
                          itemBuilder: (BuildContext ctxt, int index) {
                            ClientModel client = state[index];
                            return ListTile(
                              leading: FlutterLogo(),
                              title: Text(
                                client.name,
                              ),
                              trailing: Icon(
                                Icons.chevron_right,
                              ),
                            );
                          }),
                    )),
          ],
        ),
      ),
    );
  }
}
