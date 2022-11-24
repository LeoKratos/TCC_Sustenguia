import 'package:flutter/material.dart';
import 'Iluminacao.dart';
import 'TelaServicos.dart';
import 'Ambiente.dart';
import 'Saneamento.dart';

class TelaCategorias extends StatelessWidget {
  const TelaCategorias({Key? key}) : super(key: key);

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
                title: Text('Iluminação Pública'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Iluminacao()));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Meio Ambiente'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Ambiente()));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Saneamento Básico'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Saneamento()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}