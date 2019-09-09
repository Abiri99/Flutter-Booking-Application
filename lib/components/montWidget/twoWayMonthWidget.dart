import 'package:flutter/material.dart';

class twoWayMonthWidget extends StatefulWidget {
  String title;
  int daysNo;

  twoWayMonthWidget({this.title, this.daysNo});

  @override
  _twoWayMonthWidgetState createState() => _twoWayMonthWidgetState();
}

class _twoWayMonthWidgetState extends State<twoWayMonthWidget> {
  int start = -1, end = -1;
  //flag is used to see which state is initialized.
  int flag = -1;

  Function selectDay(int no) {
    //add day to state
    //set start , end state
    if (start < 0) {
      setState(() {
        start = no;
        flag = 0;
        print("start: $start");
      });
    } else if (end < 0) {
      setState(() {
        end = no;
        flag = 1;
        print("end: $end");
        //pop bottom sheet from stack
      });
    }
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
            child: GridView.count(
              crossAxisCount: 7,
              children: List.generate(widget.daysNo, (index) {
                return GestureDetector(
                  onTap: () {
                    selectDay(index);
                  },
                  child: Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: start > 0 || end > 0 ? Colors.red : Colors.blue,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          (index + 1).toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      )),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
