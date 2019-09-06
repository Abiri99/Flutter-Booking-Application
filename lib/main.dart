import 'package:flutter/material.dart';

import './components/homePageCard.dart';
import './components/textImage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MrBilit',
      home: Scaffold(
        appBar: null,
        floatingActionButton: null,
        backgroundColor: Colors.red,
        body: Column(
          children: <Widget>[
            textImg(),
            homePageCard()
          ],
        ),
      ),
    );
  }
}
