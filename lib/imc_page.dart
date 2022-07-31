import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:treino/my_functions.dart';

class ImcPage extends StatefulWidget {
  const ImcPage({Key? key}) : super(key: key);

  @override
  State<ImcPage> createState() => _ImcPageState();
}

class _ImcPageState extends State<ImcPage> {
  final pesoController = TextEditingController();
  final alturaController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  double peso = 0.0;
  double altura = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IMC Page"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              TextField(
                readOnly: true,
                controller: TextEditingController(text: ''),
              ),
              const SizedBox(
                height: 75,
              ),
              TextFormField(
                validator: (value) {
                  if (value != null) {
                    if (value.isEmpty) {
                      return "Necessário digitar a altura";
                    }
                  }
                  return null;
                },
                decoration: const InputDecoration(labelText: 'Altura'),
                keyboardType: TextInputType.number,
                controller: alturaController,
                onChanged: (value) {
                  log(value);
                },
              ),
              const SizedBox(
                height: 35,
              ),
              TextFormField(
                validator: (value) {
                  if (value != null) {
                    if (value.isEmpty) {
                      return "Necessário digitar o peso";
                    }
                  }
                  return null;
                },
                decoration: const InputDecoration(labelText: 'Peso'),
                keyboardType: TextInputType.number,
                controller: pesoController,
              ),
              const SizedBox(
                height: 35,
              ),
              ElevatedButton(
                  onPressed: () {
                    MyFunctions.calcButton(_formKey,
                        altura: altura,
                        peso: peso,
                        alturaController: alturaController,
                        pesoController: pesoController);
                    setState(() {});
                  },
                  child: const Text("Calcular IMC")),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    pesoController.text = '';
                    alturaController.text = '';
                    setState(() {});
                  },
                  child: const Text("Limpar"))
            ],
          ),
        ),
      ),
    );
  }
}
