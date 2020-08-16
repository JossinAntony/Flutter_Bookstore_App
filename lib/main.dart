

import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Book Store', style: TextStyle(
            fontWeight: FontWeight.bold,
          )),
        ),
        body: SingleChildScrollView(
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      hintText: "Enter Book name",
                      prefixIcon: Icon(Icons.book),
                    ),
                  )
                ],
              ),
            ),
        ),
      )
    );
  }
}
