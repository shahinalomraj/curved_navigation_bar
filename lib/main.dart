import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'a.dart';
import 'b.dart';
import 'c.dart';
import 'e.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}
class _BottomNavBarState extends State<BottomNavBar> {
  var _page = 0;
  final pages = [A(), B(), C(), E()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.blue,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index){
              setState(() {
                _page=index;
              });
          },
          items:[
            Icon(Icons.access_alarm,size: 30,),
            Icon(Icons.call,size: 30,),
            Icon(Icons.message,size: 30,),
            Icon(Icons.edit,size: 30,),
            Icon(Icons.contact_phone,size: 30,),
          ]),
        body: pages[_page],
    );
  }
}

