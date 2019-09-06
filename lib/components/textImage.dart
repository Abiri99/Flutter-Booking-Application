import 'package:flutter/material.dart';

class textImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Image.asset('assets/images/travel-photography.jpg'),
          Positioned(
            bottom: 8,
            left: 16,
            child: Text(
              "What is your destination?",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
