import 'package:flutter/material.dart';
import 'package:son_counter/pages/homePage.dart';
import 'package:son_counter/pages/schoolPage.dart';

class TemplateApp extends StatefulWidget {
  const TemplateApp({Key? key}) : super(key: key);

  @override
  State<TemplateApp> createState() => _TemplateAppState();
}

class _TemplateAppState extends State<TemplateApp> {
  var homePage = new HomePage();
  var schoolPage = new SchoolPage();
  var _selectedPageIndex = 0;
  var _pages;

  @override
  Widget build(BuildContext context) {
    _pages = [homePage, schoolPage];

    return Scaffold(
      appBar: AppBar(
        title: Text('Meu App'),
        backgroundColor: Colors.green,
      ),
      body: _body(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade300,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Template'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'escola'),
        ],
        fixedColor: Colors.green,
        currentIndex: _selectedPageIndex,
        onTap: (index) => setState(() => _selectedPageIndex = index),
      ),
    );
  }

  _body() {
    return Container(
      constraints: BoxConstraints.expand(),
      child: _pages[_selectedPageIndex],
    );
  }
}
