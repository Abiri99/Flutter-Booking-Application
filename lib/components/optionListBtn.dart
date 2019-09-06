import 'package:flutter/material.dart';

class ddBtn extends StatefulWidget {
  @override
  _ddBtnState createState() => _ddBtnState();
}

class _ddBtnState extends State<ddBtn> {
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
