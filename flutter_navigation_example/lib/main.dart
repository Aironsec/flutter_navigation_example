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
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/":
            return MaterialPageRoute(builder: (context) => const OneScreen());
          case "/TwoScreen":
            Data data = settings.arguments as Data;
            return MaterialPageRoute(
                builder: (context) => TwoScreen(data: data));
        }
        return null;
      },
    );
  }
}
