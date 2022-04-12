import 'package:flutter/material.dart';
class B extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text("Page Two",style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
