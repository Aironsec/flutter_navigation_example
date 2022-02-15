import 'package:flutter/material.dart';
import 'package:flutter_navigation_example/one_screen.dart';

class TwoScreen extends StatelessWidget {
  final Data data;
  const TwoScreen({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          data.textAppBar,
          style: const TextStyle(fontSize: 15),
        ),
        centerTitle: true,
      ),
      body: BodyTwoScreen(textBody: data.textBody),
    );
  }
}

class BodyTwoScreen extends StatelessWidget {
  final String textBody;
  const BodyTwoScreen({Key? key, required this.textBody}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            textBody,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: (() {
              String backData = 'text to screen two';
              Navigator.pop(context, backData);
            }),
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
