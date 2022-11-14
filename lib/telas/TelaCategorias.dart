import 'package:flutter/material.dart';
import 'TelaServicos.dart';

class Categorias extends StatelessWidget {
  const Categorias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categorias'),
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
                      MaterialPageRoute(builder: (context) => Servicos()));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Meio Ambiente'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Servicos()));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Saneamento Básico'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Servicos()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}