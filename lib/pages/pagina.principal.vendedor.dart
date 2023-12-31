

import 'package:app_beacon_teste/pages/cadastro.produtos.dart';
import 'package:app_beacon_teste/pages/pagina.login.dart';
import 'package:app_beacon_teste/pages/control.funcionarios.dart';
import 'package:flutter/material.dart';

class PaginaPrincipalVendedor extends StatelessWidget {
  const PaginaPrincipalVendedor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("Ultimos postados"),
        actions: <Widget>[
          //Icon(Icons.emoji_emotions),
        ],
      ),
      body : Container (
        color: Colors.black12,
      ),
      drawer: Drawer(
        child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text("VENDEDOR:"),
                decoration: BoxDecoration(
                  color: Color(0xFF9FA8DA),
                ),
              ),
              ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text("Perfis"),
                  subtitle: Text("Controle de funcionarios"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => ControlFuncionarios(),
                        )
                    );
                  },
              ),
              //Container(

              ListTile(
                leading: Icon(Icons.star),
                title: Text("Adicionar ou remover produtos"),
                subtitle: Text(""),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                  context,
                      MaterialPageRoute(
                          builder: (context) => CadastroProdutos(),
                      )
                  );
                },
              ),
            ],
        ),
      ),
    );
  }
}