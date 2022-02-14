import 'package:flutter/material.dart';
import 'package:flutter_navigation_example/one_screen.dart';

class TwoScreen extends StatelessWidget {
  const TwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Data;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          args.textAppBar,
          style: const TextStyle(fontSize: 15),
        ),
        centerTitle: true,
      ),
      body: const BodyTwoScreen(),
    );
  }
}

class BodyTwoScreen extends StatelessWidget {
  const BodyTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Data;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            args.textBody,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: (() => Navigator.pop(context)),
            child: const Text(
              'Go to page boss',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
