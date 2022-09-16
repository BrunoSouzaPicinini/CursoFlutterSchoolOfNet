import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Hello World, Flutter!',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.blueAccent, decoration: TextDecoration.none),
        ),
        Text(
          'animado com esse cara',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.green,
              fontSize: 30,
              decoration: TextDecoration.none),
        ),
      ],
    );
  }
}
