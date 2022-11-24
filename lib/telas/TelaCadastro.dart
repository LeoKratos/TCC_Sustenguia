import 'package:flutter/material.dart';
import'TelaCategorias.dart';
import 'TelaInicial.dart';
import 'package:firebase_auth/firebase_auth.dart';

class TelaCadastro extends StatelessWidget {
  TelaCadastro({Key? key}) : super(key: key);

  final _cpfControle = TextEditingController();
  final _nomeControle = TextEditingController();
  final _emailControle = TextEditingController();
  final _telefoneControle = TextEditingController();
  final _senhaControle = TextEditingController();
  final _firebaseAuth = FirebaseAuth.instance;

  final _ChaveForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
        centerTitle: true,
      ),
      body: Form(
        key: _ChaveForm,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          children: [
            TextFormField(
              controller: _cpfControle,
              decoration: InputDecoration(
                hintText: 'CPF:',
              ),
              keyboardType: TextInputType.number,
              validator: (text){
                if (text!.isEmpty ||  text.length < 11)
                  return "CPF Inválido!";
              },
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: _nomeControle,
              decoration: InputDecoration(
                hintText: 'Nome Completo:',
              ),
              validator: (text){
                if (text!.isEmpty)
                  return "Nome Inválido";
              },
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: _emailControle,
              decoration: InputDecoration(
                hintText: 'E-mail',
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (text){
                if (text!.isEmpty || !text.contains("@"))
                  return "Email Inválido";
              },
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: _telefoneControle,
              decoration: InputDecoration(
                hintText: 'Telefone',
              ),
              keyboardType: TextInputType.phone,
              validator: (text){
                if (text!.isEmpty)
                  return "Telefone Inválido";
              },
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: _senhaControle,
              decoration: InputDecoration(
                hintText: 'Senha',
              ),
              obscureText: true,
              validator: (text){
                if (text!.isEmpty)
                  return "Senha Inválida!";
              },
            ),
            SizedBox(height: 50,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(),
              child: const Text('Entrar'),
              onPressed: () {
                if(_ChaveForm.currentState!.validate()){
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TelaCategorias()));
                }
              },
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(),
              child: const Text('Voltar'),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TelaInicial()));
              },
            ),
          ],
        ),
      ),
    );
  }
  Cadastro() async {
    _firebaseAuth.createUserWithEmailAndPassword(
        email: _emailControle.text,
        password: _senhaControle.text,
    ).then((UserCredential userCredential) {
      userCredential.user!.updateDisplayName(_nomeControle.text);
    }

    );
  }
}