
//import 'dart:js_interop';
import 'package:app_beacon_teste/pages/lista.desejo.dart';
import 'package:app_beacon_teste/pages/perfil.page.dart';
import 'package:flutter/material.dart';

class PaginaPrincipalCliente extends StatelessWidget {
  const PaginaPrincipalCliente({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //backgroundColor: Colors.indigo,
        primaryColor: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          centerTitle: true,
          title: const Text("Produtos por perto"),
          actions: const <Widget>[
            //Icon(Icons.emoji_emotions),
          ],
        ),

        body: Container(
          color: Colors.white12,
        ),
        drawer: Drawer(  //BARRA LATERAL MENU
          child: ListView(
              children: <Widget>[
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xFF9FA8DA),
                  ),
                  child: Text('Nome do Usuário'),
                ),
                ListTile(
                    leading: const Icon(Icons.account_circle),
                    title: const Text("Perfil"),
                    subtitle: const Text("meus favoritos..."),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Perfil(),
                          )
                      );
                    }
                ),
                ListTile(
                  leading: const Icon(Icons.star),
                  title: const Text("Lista de Desejos"),
                  subtitle: const Text(""),
                  trailing: const Icon(Icons.arrow_forward),
                  onTap: () {
                    },
                ),
              ]
          ),
        ),
      ),
    );
  }
  }

Widget cardItem() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          leading: CircleAvatar(
          ),
          title: Text("LOJA TAL TESTEEE"),
          subtitle: Text("09/05/2019 18:37"),
          trailing: Icon(Icons.more_vert),
        ),
        //Image.asset("assets/images/exemplo-icon-desejo-list.png"), //NAO ESTA FUNCIONANDOO
        Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
                "DESCRIÇAO DO PRODUTO E PRÇOS"
            )
        ),
        ButtonBar(
          children: <Widget>[
            TextButton(
              child: const Icon(Icons.favorite),
              onPressed: () {},
            ),
            TextButton(
              child: const Icon(Icons.share),
              onPressed: () {},
            ),
          ],
        ),
      ],
    ),
  );
}