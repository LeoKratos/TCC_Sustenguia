import 'package:flutter/material.dart';
import 'package:servicos_mage/telas/TelaInicial.dart';
import 'package:servicos_mage/telas/TelaLogin.dart';


void main() {
  runApp(Programa());
}

class Programa extends StatelessWidget {
  Programa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TelaInicial());
  }
}

