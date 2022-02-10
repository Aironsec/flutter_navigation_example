import 'package:flutter/material.dart';
import 'package:flutter_navigation_example/two_screen.dart';

class OneScreen extends StatelessWidget {
  const OneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Navigtion example',
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: const BodyOneScreen(),
    );
  }
}

class BodyOneScreen extends StatelessWidget {
  const BodyOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'This is boss page',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: (() {
              MaterialPageRoute route =
                  MaterialPageRoute(builder: (context) => const TwoScreen());
              Navigator.push(context, route);
            }),
            child: const Text(
              'Go to pege two',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
