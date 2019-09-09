import 'package:flutter/material.dart';
import '../containers/homeCardContent.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Flight.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        //Transparent header including text at bottom left.
                        Container(
                          height: MediaQuery.of(context).size.height / 2,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.all(16),
                                child: Text(
                                  "Choose your destination",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                        ),
                        //Card container
                        Container(
                          height: MediaQuery.of(context).size.height / 1.13,
                          child: Card(
                            elevation: 16,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                              ),
                            ),
                            margin: EdgeInsets.all(0),
                            color: Colors.white,
                            child: Container(
                              padding: EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  homeCardContent(),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
