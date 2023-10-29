

import 'package:flutter/material.dart';

class _ModProdutos extends StatefulWidget {
  const _ModProdutos({Key? key}) : super(key: key);

  @override
  State<_ModProdutos> createState() => _ModProdutosState();
}

class _ModProdutosState extends State<_ModProdutos> {
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
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            cardItem(),
            cardItem(),
            cardItem(),
          ],
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
            backgroundImage: NetworkImage(
                "https://baltaio.blob.core.windows.net/student-images/1edd5c50-bae9-11e8-8eb4-39de303632c1.jpg"),
          ),
          title: Text("Produto tal"),
          subtitle: Text("'descriçao produto''"),
          trailing: Icon(Icons.more_vert),
        ),
        Image.asset("assets/post-picture-001.png"),
        Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
                "DESCRIÇAO DO PRODUTO E PRÇOS"
            )
        ),
        ButtonBar(
          children: <Widget>[
            TextButton(
              child: const Icon(Icons.add_sharp),
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