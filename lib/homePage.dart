import 'package:flutter/material.dart';
import 'package:losty/listViewOfFound.dart';
import 'package:losty/listViewOfLost.dart';
import 'package:losty/animated_bottom_bar.dart';
import 'onClickFAB.dart';

class HomePage extends StatefulWidget{
  final List<BarItem> barItems = [
  BarItem(
  text: "Lost",
  iconData: Icons.blur_off,
  color: Color(0xFF012b72),
  ),
  BarItem(
  text: "Found",
  iconData: Icons.blur_on,
  color: Color(0xFF012b72),
  ),
  ];
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{

  int selectedBarIndex = 0;
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
     appBar: AppBar(
       backgroundColor: Color(0xFF00b9f5),
       title: Align(
         alignment: Alignment.center,
         child: Text(selectedBarIndex == 0 ?'Lost Items':'Found Items',
           style: TextStyle(
             fontWeight: FontWeight.w600,
             fontSize: 23,
           ),
         ),
       ),
     ),
     floatingActionButton: FloatingActionButton(
       backgroundColor: Color(0xFF00b9f5),
       foregroundColor: Colors.white,
       child: Icon(Icons.add),
       onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context){
           return OnClickFAB();
         }));
       },
     ),
     body: selectedBarIndex == 0 ? ListViewOfLost(): ListViewOfFound(),
     bottomNavigationBar: AnimatedBottomBar(
         barItems: widget.barItems,
         animationDuration: const Duration(milliseconds: 150),
         barStyle: BarStyle(fontSize: 23.0, iconSize: 30.0),
         onBarTap: (index) {
           setState(() {
             selectedBarIndex = index;
           });
         }),
   );
 }
}

