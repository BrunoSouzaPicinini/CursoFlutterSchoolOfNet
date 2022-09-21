import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _cursos = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'images/1.png',
          height: 80.0,
        ),
        Text('Cursos ',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayMedium
            // style: TextStyle(
            // color: Colors.blueAccent, decoration: TextDecoration.none),
            ),
        Text('Você completou $_cursos',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.w300)),
        Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: FloatingActionButton(
            onPressed: () => setState(() => _cursos++),
            child: Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
