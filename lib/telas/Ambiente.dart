import 'TelaSolicitacao.dart';
import 'package:flutter/material.dart';

class Ambiente extends StatelessWidget {
  const Ambiente({Key? key}) : super(key: key);

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
                title: Text('Coleta de Entulhos'),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Solicitacao()));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Podar Vegetação'),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Solicitacao()));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Coleta de galhos e troncos'),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Solicitacao()));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Limpeza de Praia'),
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
