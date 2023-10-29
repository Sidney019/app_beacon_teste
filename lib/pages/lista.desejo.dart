import 'package:flutter/material.dart';

class ListaDesejo extends StatefulWidget{
  const ListaDesejo({Key? key}) : super(key: key);

  @override
  State<ListaDesejo> createState() => _ListaDesejoState();
}

class _ListaDesejoState extends State<ListaDesejo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: const Text("Busca de Produtos"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}