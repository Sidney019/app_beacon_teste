import 'package:app_beacon_teste/pages/mod.produtos.page.dart';
import 'package:app_beacon_teste/pages/login.page.dart';
import 'package:flutter/material.dart';

class HomePageVendedor extends StatelessWidget {
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
                  subtitle: Text("Configuração de funcionarios"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                  }
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
                          builder: (context) => _ModProdutosPage(),
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

_ModProdutosPage() {
}