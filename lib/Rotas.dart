import 'package:flutter/material.dart';
import 'package:servicos_mage/main.dart';
import 'package:servicos_mage/telas/TelaCadastro.dart';
import 'package:servicos_mage/telas/TelaInicial.dart';
import 'package:servicos_mage/telas/TelaLogin.dart';

class Rotas extends StatelessWidget {
  static const Inicio = '/';
  static const Login = 'TelaLogin';
  static const Cadastro = 'TelaCadastro';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        Inicio : (context) => TelaInicial(),
        Login : (context) => TelaLogin(),
        Cadastro : (context) => TelaCadastro()
      },
    );
  }
}
