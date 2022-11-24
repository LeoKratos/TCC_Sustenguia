import 'TelaSolicitacao.dart';
import 'package:flutter/material.dart';

class Saneamento extends StatelessWidget {
  const Saneamento({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seneamento - Serviços'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: ListTile(
                title: Text('Limpeza de Caixa de Esgoto'),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Solicitacao()));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Manutenção de Rios/Valões'),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Solicitacao()));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Manutenção de Bueiro/Ralos'),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Solicitacao()));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Manilhamento de Ruas'),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Solicitacao()));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Nivelamento de Ruas'),
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
