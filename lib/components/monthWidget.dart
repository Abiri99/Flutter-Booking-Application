import 'package:flutter/material.dart';

class monthWidget extends StatefulWidget {
  String title;
  int daysNo;

  monthWidget({this.title, this.daysNo});

  @override
  _monthWidgetState createState() => _monthWidgetState();
}

class _monthWidgetState extends State<monthWidget> {
  Function selectDay(int no) {
    //add day to state
  }

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
          Expanded(
            child: Container(
              child: GridView.count(
                crossAxisCount: 7,
                children: List.generate(widget.daysNo, (index) {
                  return GestureDetector(
                    onTap: selectDay(index),
                    child: Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.purple,
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            index.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        )),
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
