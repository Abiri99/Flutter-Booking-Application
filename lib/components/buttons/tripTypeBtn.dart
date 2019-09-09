import 'package:flutter/material.dart';

class ttBtn extends StatelessWidget {

  Function onChangeMode;
  String tripType;

  ttBtn(@required this.onChangeMode, @required this.tripType);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          RaisedButton.icon(
            icon: Icon(Icons.mode_edit),
            label: Text("Trip type:" + tripType),
            onPressed: onChangeMode,
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
