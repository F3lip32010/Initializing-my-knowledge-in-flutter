import 'dart:developer';

import 'package:flutter/material.dart';

class TreinoTemCaracter extends StatelessWidget {
  const TreinoTemCaracter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String funcoesText(
        {required String nome, String? nomedomeio, required String sobrenome}) {
      return '$nome $nomedomeio $sobrenome';
    }

    int result = 0;
    int multiplicacao(String? text,
        {required int multiplicador, required int multiplicando}) {
      if (text == 'Felipe') {
        result = multiplicador * multiplicando;
      } else if (text == 'Edvaldo') {
        result = multiplicador - multiplicando;
      }
      return result;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Verifica Caracter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Type in your text",
                  labelText: 'Olá',
                  fillColor: Colors.white70,
                  prefixIcon: const Icon(Icons.block)),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Type in your text",
                  fillColor: Colors.white70),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                ),
                onPressed: () {
                  String imprime = funcoesText(
                      nome: 'Edvaldo',
                      nomedomeio: 'Fernandes',
                      sobrenome: 'Santana');
                  log('Teste Botão');
                  log(imprime);
                  int imprimir2 = multiplicacao('Felipe',
                      multiplicador: 100, multiplicando: 45);
                  log('$imprimir2');
                },
                child: const Text('Verificar Caracter')),
          ],
        ),
      ),
    );
  }
}
