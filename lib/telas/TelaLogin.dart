import 'package:flutter/material.dart';
import 'TelaInicial.dart';
import 'TelaCategorias.dart';

class TelaLogin extends StatelessWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'CPF:',
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Senha:',
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(),
              child: const Text('Entrar'),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Categorias()));
              },
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(),
              child: const Text('Voltar'),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TelaInicial()));
              },
            ),
          ],
        ),
      ),
    );
  }
}