import 'package:flutter/material.dart';

import './tripTypeBtn.dart';

class actionRow extends StatefulWidget {
  @override
  _actionRowState createState() => _actionRowState();
}

class _actionRowState extends State<actionRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: <Widget>[
        Expanded(
          child: ttBtn(),
        ),
        Icon(Icons.person, color: Colors.blueGrey),
        Icon(Icons.credit_card, color: Colors.blueGrey),
      ],
    ));
  }
}
