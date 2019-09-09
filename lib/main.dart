import 'package:flutter/material.dart';

import './screens/home.dart';

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
          backgroundColor: Colors.grey,
          body: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Flight.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
                home()
            ],
          )),
    );
  }
}
