import 'package:flutter/material.dart';
import 'package:servicos_mage/modelos/ModeloUsuario.dart';
import 'package:servicos_mage/telas/TelaInicial.dart';
import 'package:servicos_mage/telas/TelaCadastro.dart';
import 'package:scoped_model/scoped_model.dart';


void main() {
  runApp(Programa());
}

class Programa extends StatelessWidget {
  Programa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModel<ModeloUsuario>(
      model: ModeloUsuario(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TelaInicial(),
      ),
    );
  }
}
