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
  int angle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 42,
                child: TextFormField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    labelText: "Enter your source",
                    fillColor: Colors.grey,
                    border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(8))
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 42,
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
        ),
        Positioned(
          top: 40,
          right: 8,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.orange,
            ),
            child: Transform.rotate(
              angle: 0,
              child: IconButton(
                icon: Icon(Icons.compare_arrows),
                disabledColor: Colors.white,
                onPressed: null,
              ),
            )
          )
        ),
      ],
    );
  }
}
