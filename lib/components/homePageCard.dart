import 'package:flutter/material.dart';

import './actionRow.dart';
import './sourceDestinationInput.dart';

class homePageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Expanded(
      child: Container(
        child: Card(
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
    ));
  }
}
