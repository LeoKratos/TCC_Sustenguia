import 'package:flutter/material.dart';

class Servicos extends StatelessWidget {
  const Servicos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'CPF:',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}