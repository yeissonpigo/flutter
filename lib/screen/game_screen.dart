import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:rickapp/screen/letter_screen.dart';

class GameScreen extends StatelessWidget {
  TextEditingController _rowQuantity = new TextEditingController();
  TextEditingController _columnQuantity = new TextEditingController();
  List<List<Char>> _matriz = [];

  List<List<Char>> createMatriz(int rowQuantity){
    for(int i = 0; i < rowQuantity; i++){
      List<Char> row = [];
      _matriz.add(row);
    }
    return _matriz;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: Text("My Rick & Morty App")),
      backgroundColor: Colors.purple,
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: _rowQuantity,
                decoration: InputDecoration(labelText: 'Enter rows quantity'),
              )),
          Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: _columnQuantity,
                decoration: InputDecoration(labelText: 'Enter rows quantity'),
              )),
          ElevatedButton(
              onPressed: () {
                List<List<Char>> matrizToBeSent = createMatriz(int.parse(_rowQuantity.text));
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LetterScreen(
                        columnQuantity: int.parse(_columnQuantity.text),
                        rowQuantity: int.parse(_rowQuantity.text),
                        matriz: matrizToBeSent)));
              },
              child: Text("Next"))
        ],
      ));
}
