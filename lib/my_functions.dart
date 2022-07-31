import 'package:flutter/material.dart';

class MyFunctions {
  final double resultImc;

  MyFunctions(this.resultImc);

  String calculoImc({required double resultImc}) {
    if (resultImc < 18.5) {
      return "Você está abaixo do peso";
    } else if (resultImc >= 18.5 && resultImc <= 24.9) {
      return "Você está com peso normal";
    } else if (resultImc >= 25.0 && resultImc <= 29.9) {
      return "Você está com sobrepeso";
    } else if (resultImc >= 30.0 && resultImc <= 40.0) {
      return "Você está com obesidade";
    } else {
      return "Você está com obesidade grave";
    }
  }

  FormFieldValidator<String> valitatorPeso() {
    return (value) {
      if (value != null) {
        if (value.isEmpty) {
          return "Necessário digitar o peso";
        }
      }
      return null;
    };
  }

  static calcButton(GlobalKey<FormState> keyGlobal,
      {required double peso,
      required double altura,
      required TextEditingController pesoController,
      required TextEditingController alturaController}) {
    if (keyGlobal.currentState!.validate()) {
      peso = double.parse(pesoController.text);
      altura = double.parse(alturaController.text);
    }
  }
}
