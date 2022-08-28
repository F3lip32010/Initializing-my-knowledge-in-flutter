import 'package:flutter/material.dart';
import 'package:treino/adivinhandoletra.dart';
import 'package:treino/imc_page.dart';
import 'package:treino/listas.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 30,
            mainAxisSpacing: 30,
          ),
          children: [
            ElevatedButton(
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const TreinoBotoes();
                  }));
                }),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.people_sharp)),
                    const Text('Treino de Botões'),
                  ],
                )),
            ElevatedButton(
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const adivinhandoLetra();
                  }));
                }),
                child: const Text('Adivinhando Letra')),
            ElevatedButton(
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const TreinoTemCaracter();
                  }));
                }),
                child: const Text('Verificar Caracter')),
            ElevatedButton(
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const ImcPage();
                  }));
                }),
                child: const Text('Calculo do IMC')),
            ElevatedButton(
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const Listas();
                  }));
                }),
                child: const Text('Listas'))
          ],
        ),
      ),
    );
  }
}
