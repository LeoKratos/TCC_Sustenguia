import 'package:flutter/material.dart';
import 'TelaInicial.dart';
import 'TelaCategorias.dart';

class TelaLogin extends StatelessWidget {
  TelaLogin({Key? key}) : super(key: key);

  final _ChaveForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Form(
        key: _ChaveForm,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'CPF:',
              ),
              keyboardType: TextInputType.number,
              validator: (text){
                if (text!.isEmpty)
                  return "CPF Inválido!";
              },
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Senha:',
              ),
              obscureText: true,
              validator: (text){
                if (text!.isEmpty || text.length < 8)
                  return "Senha Inválida!";
              },
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: (){},
                child: Text("Esqueci minha Senha",
                textAlign: TextAlign.right,),
                style: TextButton.styleFrom(foregroundColor: Colors.black, padding: EdgeInsets.zero),
              ),
            ),
            SizedBox(height: 50,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(),
              child: const Text('Entrar'),
              onPressed: () {
                if(_ChaveForm.currentState!.validate()){}
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
}