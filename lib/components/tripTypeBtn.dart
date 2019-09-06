import 'package:flutter/material.dart';

class ttBtn extends StatefulWidget {
  @override
  _ttBtnState createState() => _ttBtnState();
}

class _ttBtnState extends State<ttBtn> {
  String tripType = "One way";

  void _changeTripMode() {
    if (tripType == "One way") {
      setState(() {
        tripType = "Two way";
      });
    } else {
      setState(() {
        tripType = "One way";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          RaisedButton.icon(
            icon: Icon(Icons.mode_edit),
            label: Text("Trip type:" + tripType),
            onPressed: _changeTripMode,
            elevation: 8,
            color: Colors.orange,
            textColor: Colors.white,
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
            ),
          )
        ],
      ),
    );
  }
}
