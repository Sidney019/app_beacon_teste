

import 'package:flutter/material.dart';

class CadastroProdutos extends StatelessWidget {
  const CadastroProdutos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.indigo,
      centerTitle: true,
      title: const Text("Cadastramento de produtos"),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add),
        ),
      ],
      ),
    );
  }
}