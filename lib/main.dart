import 'package:flutter/material.dart';
import 'package:rickapp/screen/index_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: IndexScreen(),
    );
  }
}
