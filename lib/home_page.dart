import 'package:flutter/material.dart';
import 'package:treino/adivinhandoletra.dart';
import 'package:treino/imc_page.dart';
import 'package:treino/treino_botoes.dart';
import 'package:treino/treino_temcaracter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const TreinoBotoes();
                    }));
                  }),
                  child: const Text('Treino de Botões')),
              const SizedBox(
                height: 35,
              ),
              ElevatedButton(
                  onPressed: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const adivinhandoLetra();
                    }));
                  }),
                  child: const Text('Adivinhando Letra')),
              const SizedBox(
                height: 35,
              ),
              ElevatedButton(
                  onPressed: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const TreinoTemCaracter();
                    }));
                  }),
                  child: const Text('Verificar Caracter')),
              const SizedBox(
                height: 35,
              ),
              ElevatedButton(
                  onPressed: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const ImcPage();
                    }));
                  }),
                  child: const Text('Calculo do IMC'))
            ],
          ),
        ],
      ),
    );
  }
}
