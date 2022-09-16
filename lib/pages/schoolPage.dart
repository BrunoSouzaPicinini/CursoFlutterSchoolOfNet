import 'package:flutter/material.dart';

class SchoolPage extends StatefulWidget {
  const SchoolPage({Key? key}) : super(key: key);

  @override
  State<SchoolPage> createState() => _SchoolPageState();
}

class _SchoolPageState extends State<SchoolPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Visite:', textAlign: TextAlign.center),
        ElevatedButton(
            onPressed: () {}, child: Text('Looks like a RaisedButton'))
      ],
    );
  }
}
