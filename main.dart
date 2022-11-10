import 'package:flutter/material.dart';
import 'package:servicos_mage/telas/TelaInicial.dart';

void main() {
  runApp(const Programa());
}

class Programa extends StatelessWidget {
  const Programa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: TelaInicial());
  }
}

