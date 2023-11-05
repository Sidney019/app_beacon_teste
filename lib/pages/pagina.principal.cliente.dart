
//import 'dart:js_interop';
import 'package:app_beacon_teste/pages/lista.desejo.dart';
import 'package:app_beacon_teste/pages/perfil.cliente.dart';
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
                          MaterialPageRoute(builder: (context) => PerfilCliente(),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ListaDesejo(),
                      )
                    );
                    },
                ),
              ]
          ),
        ),
      ),
    );
  }
}