// ignore: unused_import
import 'dart:developer';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class adivinhandoLetra extends StatelessWidget {
  const adivinhandoLetra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController letterController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Guessing the Lyrics'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              TextFormField(
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
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: letterController,
                onChanged: (value) {
                  //letterController.text = value;
                  log(letterController.text);
                },
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return "Need to type the letter";
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
                    labelText: 'Letter',
                    fillColor: Colors.white70,
                    prefixIcon: const Icon(Icons.abc_rounded)),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                                actions: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.abc_outlined))
                                ],
                                title: const Text('Olá Brasil'),
                              ));
                      String name = nameController.text.toUpperCase();
                      String letter = letterController.text.toUpperCase();
                      bool resposta = name.contains(letter);
                      log('$resposta');
                      if (resposta) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.green,
                            content: const Text('True Letter!'),
                            action: SnackBarAction(
                              label: 'Action',
                              onPressed: () {
                                // Code to execute.
                              },
                            ),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.red,
                            action: SnackBarAction(
                              label: 'Action',
                              onPressed: () {
                                // Code to execute.
                              },
                            ),
                            content: const Text('Awesome SnackBar!'),
                            duration: const Duration(milliseconds: 1500),
                            width: 280.0, // Width of the SnackBar.
                            padding: const EdgeInsets.symmetric(
                              horizontal:
                                  8.0, // Inner padding for SnackBar content.
                            ),
                            behavior: SnackBarBehavior.floating,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        );
                      }
                    }
                  },
                  child: const Text('Verify Letter')),
            ],
          ),
        ),
      ),
    );
  }
}
