import 'package:flutter/material.dart';
import 'package:flutter_navigation_example/one_screen.dart';

void main(List<String> args) {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Navigation example',
      home: OneScreen(),
    );
  }
}
