import 'package:flutter/material.dart';

class FABWindow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return FractionallySizedBox(
     widthFactor: 1,
     heightFactor: 0.8,
     child: Container(
      height: 400,
      width: 150,
      color: Colors.white,
     ),
   );
  }
}