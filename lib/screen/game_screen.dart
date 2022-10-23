import 'package:flutter/material.dart';
import 'package:rickapp/screen/letter_screen.dart';

class GameScreen extends StatelessWidget {
  TextEditingController _rowQuantity = new TextEditingController();
  TextEditingController _columnQuantity = new TextEditingController();
  void _setRows(rowQuantity) {
    rowQuantity = rowQuantity;
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
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LetterScreen(
                        columnQuantity: int.parse(_columnQuantity.text),
                        rowQuantity: int.parse(_rowQuantity.text))));
              },
              child: Text("Next"))
        ],
      ));
}
