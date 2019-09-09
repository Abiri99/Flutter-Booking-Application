import 'package:flutter/material.dart';

class monthWidget extends StatefulWidget {

  String title;
  int daysNo;

  monthWidget({this.title, this.daysNo});

  @override
  _monthWidgetState createState() => _monthWidgetState();
}

class _monthWidgetState extends State<monthWidget> {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            Text(widget.title),
            Text("hi"),
            Text("hi"),
          ]
        ),
        TableRow(
          children: [
            Text(widget.daysNo.toString()),
            Text("hi"),
            Text("hi"),
          ]
        ),
      ],
    );
  }
}