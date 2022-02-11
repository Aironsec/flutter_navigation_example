import 'package:flutter/material.dart';
import 'package:flutter_navigation_example/one_screen.dart';

class TwoScreen extends StatelessWidget {
  final User user;
  const TwoScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            user.name,
            style: const TextStyle(fontSize: 15),
          ),
        ),
      ),
      body: BodyTwoScreen(user: user),
    );
  }
}

class BodyTwoScreen extends StatelessWidget {
  final User user;
  const BodyTwoScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${user.age}',
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
