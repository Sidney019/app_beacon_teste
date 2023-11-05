import 'package:flutter/material.dart';

class ListaDesejo extends StatelessWidget{
  const ListaDesejo({super.key});

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