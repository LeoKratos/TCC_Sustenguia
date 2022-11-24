import 'package:flutter/material.dart';
import 'TelaLogin.dart';
import 'TelaCadastro.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Início'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/mage.png'),
            height: 300,),
            SizedBox(height: 30,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(),
              child: const Text('Login'),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => TelaLogin()));
              },
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(),
              child: const Text('Cadastro'),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TelaCadastro()));
              },
            ),
          ],
        ),
      ),
    );
  }
}