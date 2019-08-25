import 'package:flutter/material.dart';

class OnClickFAB extends StatefulWidget {
  @override
  _OnClickFABState createState() => _OnClickFABState();
}

class _OnClickFABState extends State<OnClickFAB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfff1ec),
      appBar: AppBar(
        backgroundColor: Color(0xFFfc8c03),
        title: Align(
          alignment: Alignment.center,
          child: Text(
            'Add Items',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 23,
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 25,),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 200,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
