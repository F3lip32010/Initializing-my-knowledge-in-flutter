import 'dart:developer';

import 'package:flutter/material.dart';

class Listas extends StatefulWidget {
  const Listas({Key? key}) : super(key: key);

  @override
  State<Listas> createState() => _ListasState();
}

class _ListasState extends State<Listas> {
  //Map<String, String> nomeSobrenome = {"nome": 'Edvaldo', "sobrenome": 'Santana'};
  List turma = <String>['Felipe', 'Luíza', 'Leonardo', 'Manoela'];
  final TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listas'),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: TextFormField(
                    controller: nameController,
                    onChanged: (value) {
                      //nameController.text = value;
                      log(nameController.text);
                    },
                    validator: (value) {
                      if (value!.length < 3) {
                        return "Necessário digitar no mínimo 3 caracteres";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Type in your text",
                      labelText: 'Name',
                      fillColor: Colors.white70,
                      prefixIcon: const Icon(Icons.person),
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: IconButton(
                        onPressed: () {
                          turma.add(nameController.text);
                          nameController.clear();
                          setState(() {});
                        },
                        icon: const Icon(Icons.check)))
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: turma.length,
              itemBuilder: (context, index) {
                return Text(turma[index]);
              },
            ),
          ],
        ));
  }
}
