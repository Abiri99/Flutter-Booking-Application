import 'package:flutter/material.dart';

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
        body: Column(children: <Widget>[
          Stack(children: <Widget>[
            Image.asset('assets/images/travel-photography.jpg'),
            Positioned(
              bottom: 8,
              right: 16,
              child: Text(
                "someText",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
                ),
            )
          ],),
          Container(
            child: Card(
              color: Colors.white,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text("hello world")
                  ],
                ),
              ),
            ),
          )
        ],),
      ),
    );
  }
}
