import 'package:flutter/material.dart';

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

class BodyOneScreen extends StatefulWidget {
  const BodyOneScreen({Key? key}) : super(key: key);

  @override
  State<BodyOneScreen> createState() => _BodyOneScreenState();
}

class _BodyOneScreenState extends State<BodyOneScreen> {
  String text = 'This is boss page';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: (() {
              _returnDataFromTwoScreen(context);
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

  void _returnDataFromTwoScreen(BuildContext context) async {
    Data data = Data('HI TWO SCREEN', 'tratsfer data of one screen');
    final result =
        await Navigator.pushNamed(context, '/TwoScreen', arguments: data);

    setState(() {
      text = result != null ? result as String : "No text";
    });
  }
}

class Data {
  final String textAppBar;
  final String textBody;

  Data(this.textAppBar, this.textBody);
}
