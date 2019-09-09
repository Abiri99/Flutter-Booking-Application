import 'package:flutter/material.dart';
import 'package:mrbilit/components/calendarWidget/oneWayMonthWidget.dart';

import './calendarWidget/twoWayMonthWidget.dart';

import '../model/month.dart';

class persianCalendar extends StatelessWidget {
  String type = "";
  Function setDate;

  persianCalendar({@required this.type, @required this.setDate});

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
          ),
        ),
        child: PageView(
          controller: controller,
          children: <Widget>[
            //Screens are different months of selected year,
            //In real app data will be mapped to widgets,
            ...(months.map((month) {
              return type == "One way"
                  ? oneWayMonthWidget(title: month.title, daysNo: month.daysNo, setDate: setDate,)
                  : twoWayMonthWidget(title: month.title, daysNo: month.daysNo, setDate: setDate,);
            })).toList(),
          ],
        ),
      ),
    );
  }
}
