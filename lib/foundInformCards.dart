import 'package:flutter/material.dart';

class FoundInformCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                  width: 300,
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFF00b9f5),
                    boxShadow: [
                      new BoxShadow(
                          color: Color(0x4D000000),
                          offset: new Offset(0.0, 5.0),
                          blurRadius: 20.0,
                          spreadRadius: 1)
                    ],
                  )),
              Positioned(
                top: 110,
                left: 20,
                child: Container(
                  width: 200,
                  height: 25,
                  color: Colors.transparent,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "@Username",
                      style: TextStyle(
                          fontFamily: 'Raleway-Light',
                          color: Colors.white70,
                          fontSize: 14,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 135,
                left: 20,
                child: Container(
                  width: 200,
                  height: 60,
                  color: Colors.transparent,
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Wrap(
                        children: <Widget>[
                          Text(
                            "Title of Random Ideal Post",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                        direction: Axis.horizontal,
                      )),
                ),
              ),
              Positioned(
                left: -5.0,
                child: Container(
                  height: 105.0,
                  width: 310.0,
                  child: Text('Found Item Image'),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: [
                      new BoxShadow(
                          color: Color(0x4D000000),
                          offset: new Offset(0.0, 5.0),
                          blurRadius: 20.0,
                          spreadRadius: 1)
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50)
        ],
      ),
    );
  }
}
