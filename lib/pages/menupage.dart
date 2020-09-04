import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Options'),
      ),
      body: SizedBox.expand(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff67B26F),
              Color(0xff4ca2cd),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
          ),
        ),
      ),
    ));
  }
}
