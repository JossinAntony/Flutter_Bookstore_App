
import 'package:flutter/material.dart';
import 'package:flutter_bookstore_app/pages/addBooks.dart';
import 'package:flutter_bookstore_app/pages/login.dart';
import 'package:flutter_bookstore_app/pages/navigation.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: LogIn(),
      home: Navigation(),
    );
  }
}
