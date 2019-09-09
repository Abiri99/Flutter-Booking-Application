import 'package:flutter/material.dart';

class oneWayMonthWidget extends StatefulWidget {
  String title;
  int daysNo;
  Function setDate;

  oneWayMonthWidget({this.title, this.daysNo, @required this.setDate});

  @override
  _oneWayMonthWidgetState createState() => _oneWayMonthWidgetState();
}

class _oneWayMonthWidgetState extends State<oneWayMonthWidget> {
  int selected = -1;
  //flag is used to see which state is initialized.
  //int flag = -1;

  Function selectDay(int no) {
    //add day to state
    //set start , end state
    if (selected < 0) {
      setState(() {
        selected = no+1;
      });
      //pop stack
      Navigator.pop(context);
      widget.setDate(
          fDay: no.toString(), fMonth: widget.title, type: "One way");
      print("selected: $selected");
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
                        color: selected == index
                            ? Colors.blue
                            : Colors.transparent,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          (index + 1).toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: selected == index
                                ? Colors.white
                                : Colors.black87,
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
