import 'package:flutter/material.dart';
import 'package:mrbilit/components/beautyTf.dart';
import './beautyTf.dart';
import 'tripTypeBtn.dart';

class sdInput extends StatefulWidget {
  @override
  _sdInputState createState() => _sdInputState();
}

class _sdInputState extends State<sdInput> {
  String source = '';
  String destination = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 48,
            child: TextFormField(
            cursorColor: Colors.grey,
            decoration: InputDecoration(
                labelText: "Enter your source",
                fillColor: Colors.grey,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
            ),
          ),
          
          SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 48,
            child: TextFormField(
            decoration: InputDecoration(
                labelText: "Enter your destination",
                fillColor: Colors.grey,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
            ),
          ),
          ttBtn(),
        ],
      ),
    );
  }
}
