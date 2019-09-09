import 'package:flutter/material.dart';
import 'package:mrbilit/components/persianCalendar.dart';
import '../components/buttons/tripTypeBtn.dart';
import './../components/persianCalendar.dart';
import './../components/buttons/searchBtn.dart';

class homeCardContent extends StatefulWidget {
  @override
  _homeCardContentState createState() => _homeCardContentState();
}

class _homeCardContentState extends State<homeCardContent> {
  String tripType = "One way";
  // String source = '';
  // String destination = '';
  // int angle;
  String date = "Choose date";

  final sourceController = TextEditingController();
  final destinationController = TextEditingController();
  final dateController = TextEditingController();

  //The function which swaps source/destination text field values.
  Function swap() {
    String src = sourceController.text;
    String des = destinationController.text;
    print("swaped");
    sourceController.text = des;
    destinationController.text = src;
  }

  //Function which listens to changes happening to trip type.
  Function onChangeMode() {
    if (tripType == "One way") {
      setState(() {
        tripType = "Two way";
      });
    } else {
      setState(() {
        tripType = "One way";
      });
    }
    print(tripType);
  }

  Function setDate({String fMonth, String fDay, String lMonth, String lDay, String type}) {
    setState(() {
      date = type == "One way"
          ? fMonth + " " + fDay
          : fMonth + " " + fDay + " - " + lMonth + " " + lDay;
      print(date);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ttBtn(onChangeMode, tripType),
              ),
              Icon(Icons.person, color: Colors.blueGrey),
              Icon(Icons.credit_card, color: Colors.blueGrey),
            ],
          )),
          Stack(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 42,
                      child: TextField(
                        controller: sourceController,
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                            labelText: "Enter your source",
                            prefixIcon: Icon(Icons.pin_drop),
                            fillColor: Colors.blue,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8))),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      height: 42,
                      child: TextField(
                        controller: destinationController,
                        cursorWidth: 0,
                        decoration: InputDecoration(
                            labelText: "Enter your destination",
                            prefixIcon: Icon(Icons.map),
                            fillColor: Colors.blue,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8))),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 40,
                  right: 8,
                  child: GestureDetector(
                    onTap: () {
                      swap();
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.orange),
                            color: Colors.orange,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0, 5),
                                  blurRadius: 8,
                                  spreadRadius: 0.1)
                            ]),
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: IconButton(
                            icon: Icon(Icons.compare_arrows),
                            disabledColor: Colors.white,
                            onPressed: null,
                          ),
                        )),
                  )),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 42,
            width: double.infinity,
            child: TextField(
              controller: dateController,
              enableInteractiveSelection: false,
              cursorWidth: 0,
              decoration: InputDecoration(
                  labelText: date,
                  prefixIcon: Icon(Icons.date_range),
                  fillColor: Colors.blue,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8))),
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return persianCalendar(type: tripType, setDate: setDate);
                    });
                // print("source: " + this.sourceController.text);
                // print("destination: " + this.destinationController.text);
              },
            ),
          ),
          SizedBox(
            height: 8,
          ),
          searchBtn(),
        ],
      ),
    );
  }
}
