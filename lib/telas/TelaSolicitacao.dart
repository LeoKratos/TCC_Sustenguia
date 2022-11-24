import 'package:flutter/material.dart';

class Solicitacao extends StatelessWidget {
  const Solicitacao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Solicitar Serviço'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Requerente',
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Local da Ocorrência',
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Referência',
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Descrição',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}