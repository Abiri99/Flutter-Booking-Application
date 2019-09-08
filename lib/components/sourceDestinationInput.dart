import 'package:flutter/material.dart';
import './myTextField.dart';
import 'tripTypeBtn.dart';

class sdInput extends StatefulWidget {
  @override
  _sdInputState createState() => _sdInputState();
}

class _sdInputState extends State<sdInput> {
  String source = '';
  String destination = '';
  int angle;
  String date = "Choose date";

  final sourceController = TextEditingController();
  final destinationController = TextEditingController();
  final dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
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
                            fillColor: Colors.grey,
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
                            fillColor: Colors.grey,
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
                      ))),
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
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8))),
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return null;
                    });
                // print("source: " + this.sourceController.text);
                // print("destination: " + this.destinationController.text);
              },
            ),
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
