import 'package:flutter/material.dart';
import 'package:flutter_navigation_example/one_screen.dart';
import 'package:flutter_navigation_example/two_screen.dart';

void main(List<String> args) {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation example',
      home: const OneScreen(),
      // initialRoute: '/TwoScreen', //при старте открыть нужный экран "/" - конень
      routes: {
        '/TwoScreen': (context) => const TwoScreen(),
      },
    );
  }
}
