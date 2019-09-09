import 'package:flutter/material.dart';

class monthWidget extends StatefulWidget {
  String title;
  int daysNo;

  monthWidget({this.title, this.daysNo});

  @override
  _monthWidgetState createState() => _monthWidgetState();
}

class _monthWidgetState extends State<monthWidget> {
  Function renderDays(int no) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 0, right: 0, top: 8, bottom: 24),
            child: Text(
              widget.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            decoration: BoxDecoration(),
          ),
          Table(
            border: TableBorder.all(color: Color(0xFFe0e0e0)),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                children: [
                  Text(
                    widget.title,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "hi",
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "hi",
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "hi",
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "hi",
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "hi",
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "hi",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              TableRow(children: [
                Text(
                  widget.title,
                  textAlign: TextAlign.center,
                ),
                Text(
                  "hi",
                  textAlign: TextAlign.center,
                ),
                Text(
                  "hi",
                  textAlign: TextAlign.center,
                ),
                Text(
                  "hi",
                  textAlign: TextAlign.center,
                ),
                Text(
                  "hi",
                  textAlign: TextAlign.center,
                ),
                Text(
                  "hi",
                  textAlign: TextAlign.center,
                ),
                Text(
                  "hi",
                  textAlign: TextAlign.center,
                ),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
