import 'package:flutter/material.dart';

class TreinoBotoes extends StatefulWidget {
  const TreinoBotoes({Key? key}) : super(key: key);

  @override
  State<TreinoBotoes> createState() => _TreinoBotoesState();
}

class _TreinoBotoesState extends State<TreinoBotoes> {
  @override
  void initState() {
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String minhaSobremesaPreferida = 'teste';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Treino Botões'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          botaoSobremesa(
              nomeDaSobremesa: 'Bolo',
              corSobremesa: Colors.red,
              clickBotao: () {
                setState(() {
                  minhaSobremesaPreferida = 'Bolo';
                });
              }),
          const SizedBox(
            height: 30,
          ),
          botaoSobremesa(
              nomeDaSobremesa: 'Sorvete',
              corSobremesa: Colors.yellow,
              clickBotao: () {
                setState(() {
                  minhaSobremesaPreferida = 'Sorvete';
                });
              }),
          const SizedBox(
            height: 30,
          ),
          botaoSobremesa(
              nomeDaSobremesa: 'Torta',
              corSobremesa: Colors.blue,
              clickBotao: () {
                setState(() {
                  minhaSobremesaPreferida = 'Torta';
                });
              }),
          const SizedBox(
            height: 30,
          ),
          botaoSobremesa(
              nomeDaSobremesa: 'Canjica',
              corSobremesa: Colors.green,
              clickBotao: () {
                setState(() {
                  minhaSobremesaPreferida = 'Canjica';
                });
              }),
          const SizedBox(
            height: 30,
          ),
          botaoSobremesa(
              nomeDaSobremesa: 'Cocada',
              corSobremesa: Colors.grey,
              clickBotao: () {
                setState(() {
                  minhaSobremesaPreferida = 'Cocada';
                });
              }),
          const SizedBox(
            height: 30,
          ),
          botaoSobremesa(
              nomeDaSobremesa: 'Gelatina',
              corSobremesa: Colors.orange,
              clickBotao: () {
                setState(() {
                  minhaSobremesaPreferida = 'Gelatina';
                });
              }),
          const SizedBox(
            height: 30,
          ),
          botaoSobremesa(
              nomeDaSobremesa: 'Açai',
              corSobremesa: Colors.black,
              clickBotao: () {
                setState(() {
                  minhaSobremesaPreferida = 'Açai';
                });
              }),
          const SizedBox(
            height: 30,
          ),
          botaoSobremesa(
              nomeDaSobremesa: 'Pudim',
              corSobremesa: Colors.red,
              clickBotao: () {
                setState(() {
                  minhaSobremesaPreferida = 'Pudim';
                });
              }),
          const SizedBox(
            height: 30,
          ),
          botaoSobremesa(
              nomeDaSobremesa: 'Pavês',
              corSobremesa: Colors.purple,
              clickBotao: () {
                setState(() {
                  minhaSobremesaPreferida = 'Pavês';
                });
              }),
          const SizedBox(
            height: 30,
          ),
          botaoSobremesa(
              nomeDaSobremesa: 'Mussesmodificado',
              corSobremesa: Colors.pink,
              clickBotao: () {
                minhaSobremesaPreferida = 'Mussesmodificado';
                setState(() {});
              }),
          const SizedBox(
            height: 30,
          ),
          Text(minhaSobremesaPreferida),
        ],
      ),
    );
  }

  ElevatedButton botaoSobremesa(
      {String? nomeDaSobremesa,
      Color? corSobremesa,
      required Function() clickBotao}) {
    return ElevatedButton(
      onPressed: clickBotao,
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(color: corSobremesa),
        child: Text(nomeDaSobremesa!),
      ),
    );
  }
}
