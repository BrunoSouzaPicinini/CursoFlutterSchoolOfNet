import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _cursos = 0;
  int _selectedImage = 0;
  final _images = [
    'images/1.png',
    'images/2.png',
    'images/3.png',
    'images/4.png',
    'images/5.png',
    'images/6.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          _images[_selectedImage],
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
            onPressed: () => setState(() {
              _cursos++;
              var selectedImage = _cursos ~/ 2;
              if (selectedImage <= 4) {
                _selectedImage = selectedImage;
              }
              if (selectedImage > 4) {
                _selectedImage = 5;
              }
            }),
            child: Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
