import 'package:flutter/material.dart';

import './components/optionListBtn.dart';

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
            Stack(
              children: <Widget>[
                Image.asset('assets/images/travel-photography.jpg'),
                Positioned(
                  bottom: 8,
                  left: 16,
                  child: Text(
                    "What is your destination?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                child: Card(
                  margin: EdgeInsets.all(0),
                  color: Colors.white,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(child: ddBtn(),),
                            Icon(Icons.person, color: Colors.blueGrey),
                            Icon(Icons.credit_card, color: Colors.blueGrey),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
