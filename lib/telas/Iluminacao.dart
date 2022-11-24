import 'TelaSolicitacao.dart';
import 'package:flutter/material.dart';

class Iluminacao extends StatelessWidget {
  const Iluminacao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categorias'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: ListTile(
                title: Text('Manutenção'),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Solicitacao()));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Requerimento'),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Solicitacao()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
