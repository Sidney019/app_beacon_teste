import 'package:app_beacon_teste/pages/pagina.principal.vendedor.dart';
import 'package:app_beacon_teste/pages/pagina.principal.cliente.dart';
import 'package:app_beacon_teste/pages/pagina.cadastro.cliente.dart';
import 'package:app_beacon_teste/pages/pagina.cadastro.vendedor.dart';
import 'package:app_beacon_teste/pages/reset-password.page.dart';
import 'package:flutter/material.dart';

class PaginaLogin extends StatelessWidget {
  const PaginaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white12,
        child: ListView(
          children: [
            SizedBox( //DIMINUI A IMAGEMMM
              width: 128,
                height: 128,
                child: Image.asset("assets/images/logo-login.page.webp"),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText:
                  "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: const TextStyle(
                fontSize: 20
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText:
                    "Senha",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResetPasswordPage(),
                      ),
                  );
                },
                child: const Text(
                  "Recuperar Senha",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),

            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.2, 1],
                  colors: [
                    Color(0xFF9FA8DA),
                    Color(0xFF3F51B5),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Entrar",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 26,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaginaPrincipalCliente(),
                      ),
                    );
                  },
                ),
              ),
            ),
            //SizedBox(
              //height: 50,
            //),

            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
              child: TextButton(
                child: const Text(
                  "Cadastre-se como cliente",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaginaCadastroCliente(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 40,
              child: TextButton(
                child: const Text(
                  "Cadastrar-se como vendedor",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaginaCadastroVendedor(),
                      ),
                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}