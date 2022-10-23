import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: Text("My Rick & Morty App")),
      backgroundColor: Colors.purple,
      body: Column(
        children: [
          Text("info"),
          ElevatedButton(
            child: Text("FUNCIONA"),
            onPressed: null,
          )
        ],
      ),
    );
}
