import 'package:flutter/material.dart';

import '../components/actionRow.dart';
import '../components/sourceDestinationInput.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/travel-photography.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 3,
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Choose your destination",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                )),
          ),
          Expanded(
            child: Container(
              child: Card(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                ),
                margin: EdgeInsets.all(0),
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[actionRow(), sdInput()],
                  ),
                ),
              ),
            ),
          )
        ],
      )
    ]);
  }
}
