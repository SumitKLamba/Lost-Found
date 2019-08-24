import 'package:flutter/material.dart';
import 'package:losty/listViewOfFound.dart';
import 'package:losty/listViewOfLost.dart';
import 'package:losty/animated_bottom_bar.dart';

class OnClickFAB extends StatefulWidget{
  final List<BarItem> barItems = [
    BarItem(
      text: "Lost",
      iconData: Icons.blur_off,
      color: Colors.white,
    ),
    BarItem(
      text: "Found",
      iconData: Icons.blur_on,
      color: Colors.white,
    ),
  ];
  @override
  _OnClickFABState createState() => _OnClickFABState();
}

class _OnClickFABState extends State<OnClickFAB>{

  int selectedBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfff1ec),
      appBar: AppBar(
        backgroundColor: Color(0xFFfc8c03),
        title: Align(
          alignment: Alignment.center,
          child: Text('Add Items',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 23,
            ),
          ),
        ),
      ),

      body: Column(
       children: <Widget>[
         
       ],
      ),

    );
  }
}
