import 'package:flutter/material.dart';

class OnClickFAB extends StatefulWidget {
  @override
  _OnClickFABState createState() => _OnClickFABState();
}

class _OnClickFABState extends State<OnClickFAB> {
  String title = "";
  String desc = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfff1ec),
      appBar: AppBar(
        backgroundColor: Color(0xFF00b9f5),
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
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: 700,
          width: 340,
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 200,
                  width: 360,
                  decoration: BoxDecoration(
                    color: Color(0xFF00b9f5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              TextField(
                maxLength: 40,
                onChanged: (text) {
                  title = text;
                },
                decoration: InputDecoration(
                  labelText: 'Object',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                maxLines: 6,
                onChanged: (text) {
                  desc = text;
                },
                decoration: InputDecoration(
                  hintText: 'Description',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
