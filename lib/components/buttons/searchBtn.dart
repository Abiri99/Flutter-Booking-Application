import 'package:flutter/material.dart';

class searchBtn extends StatefulWidget {
  @override
  _searchBtnState createState() => _searchBtnState();
}

class _searchBtnState extends State<searchBtn> {
  var _color = Colors.blue;
  var _height = 42.0, _width = 500.0;
  var _borderRadius = 8.0;
  Widget _child = Text(
    "Search",
    textAlign: TextAlign.center,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );

  animateContainer() {
    setState(() {
      _width = _width == 42.0 ? 500.0 : 42.0;
      _borderRadius = _borderRadius == 8.0 ? 100.0 : 8.0;
      _child = SizedBox(
        width: 18,
        height: 18,
        child: CircularProgressIndicator(
          backgroundColor: Colors.white,
          strokeWidth: 2,
        ),
      );
    });
  }

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: animateContainer,
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        width: _width,
        height: _height,
        padding: EdgeInsets.all(8),
        child: Align(
          alignment: Alignment.center,
          child: _child,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(_borderRadius),
            color: _color,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 5.0),
                blurRadius: 8,
              )
            ]),
      ),
    );
  }
}
