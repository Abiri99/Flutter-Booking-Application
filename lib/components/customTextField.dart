import 'package:flutter/material.dart';

class customTextField extends StatefulWidget {

  final String placeholder;
  final Icon icon;
  final Function onPressed;

  customTextField({this.placeholder, this.icon, this.onPressed});

  @override
  _customTextFieldState createState() => _customTextFieldState();
}

class _customTextFieldState extends State<customTextField> {

  String _value;

  String get value {
    return this._value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(new Radius.circular(30)),
        ),
        padding: new EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
        child: Row(
          children: <Widget>[
            TextFormField(
              decoration: null
            )
          ],
        ));
  }
}
