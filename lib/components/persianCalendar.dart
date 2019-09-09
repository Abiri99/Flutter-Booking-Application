import 'package:flutter/material.dart';

import '../screens/page_view/screen1.dart';
import '../screens/page_view/screen2.dart';
import './monthWidget.dart';

import '../model/month.dart';

class persianCalendar extends StatefulWidget {

  Function onSelectDate;

  //persianCalendar(this.onSelectDate);

  @override
  _persianCalendarState createState() => _persianCalendarState();
}

class _persianCalendarState extends State<persianCalendar> {
  final controller = PageController(initialPage: 0);

  var months = [
    month('فروردین', 31),
    month('اردیبهشت', 31),
    month('خرداد', 31),
  ];

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
            //Screens are different months of selected year,
            //In real app data will be mapped to widgets,
            ...(months.map((month) {
              return monthWidget(
                title: month.title,
                daysNo: month.daysNo
              );
            })).toList(),
            // screen1(),
            // screen2(),
            // screen2(),
            // screen2(),
            // screen2(),
            // screen2(),
            // screen2(),
            // screen2(),
            // screen2(),
            // screen2(),
            // screen2(),
            // screen2(),
          ],
        ),
      ),
    );
  }
}
