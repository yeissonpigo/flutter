import 'package:flutter/material.dart';
import 'package:rickapp/screen/game_screen.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: Text("My Rick & Morty App")),
      backgroundColor: Colors.purple,
      body: 
        Center(
          child: 
            ElevatedButton(
              child: Text("Sopa de letras"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GameScreen()));
              }),
            )
      );
}
