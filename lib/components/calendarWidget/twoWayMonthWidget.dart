import 'package:flutter/material.dart';

class twoWayMonthWidget extends StatefulWidget {
  String title;
  int daysNo;
  Function setDate;

  twoWayMonthWidget({this.title, this.daysNo, @required this.setDate});

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
        start = no + 1;
        flag = 0;
        print("start: $start");
      });
    } else if (end < 0) {
      setState(() {
        end = no + 1;
        flag = 1;
        print("end: $end");
        //pop bottom sheet from stack
        Navigator.pop(context);
        widget.setDate(
            fDay: start.toString(),
            lDay: end.toString(),
            fMonth: widget.title,
            lMonth: widget.title,
            type: "Two way");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: 0,
              right: 0,
              top: 8,
              bottom: 24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(
                  Icons.arrow_back,
                  color: Colors.grey,
                ),
                Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                ),
              ],
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
                        color: start == index
                            ? Colors.blue
                            : end == index ? Colors.red : Colors.transparent,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          (index + 1).toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: start == index
                                ? Colors.white
                                : end == index ? Colors.white : Colors.black87,
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
