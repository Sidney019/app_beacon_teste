import 'package:flutter/material.dart';

class _ListaDesejo extends StatefulWidget{
  const _ListaDesejo({Key? key}) : super(key: key);

  @override
  State<_ListaDesejo> createState() => _ListaDesejoState();
}

class _ListaDesejoState extends State<_ListaDesejo> {

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