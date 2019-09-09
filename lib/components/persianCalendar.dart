import 'package:flutter/material.dart';

import '../screens/page_view/screen1.dart';
import '../screens/page_view/screen2.dart';

class persianCalendar extends StatefulWidget {
  @override
  _persianCalendarState createState() => _persianCalendarState();
}

class _persianCalendarState extends State<persianCalendar> {
  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF737373),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            )),
        child: PageView(
          controller: controller,
          children: <Widget>[
            screen1(),
            screen2(),
          ],
        ),
      ),
    );
  }
}
