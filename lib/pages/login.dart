import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('BOOKSTORE'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: SizedBox.expand(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0xff67B26F), Color(0xff4ca2cd),],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
            ),
          ),
        )
      )
    );
  }
}
