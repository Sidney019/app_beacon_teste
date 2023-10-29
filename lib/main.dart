import 'package:http/http.dart';
import 'package:app_beacon_teste/pages/login.page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Widget raiz da aplicacao.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App_beacon_teste', //titulo de busca na barra da pagina
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const LoginPage(),
    );
  }
}
