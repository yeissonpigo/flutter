import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LetterScreen extends StatelessWidget {
  final int columnQuantity;
  final int rowQuantity;
  final List<List<Char>> matriz = [];
  LetterScreen({required this.columnQuantity, required this.rowQuantity, required matriz});

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: Text("My Rick & Morty App")),
      backgroundColor: Colors.purple,
      body: Column(children: [
        Text('Rows: ${this.rowQuantity}'),
        Text('Columns: ${this.columnQuantity}')
      ],)); 
}