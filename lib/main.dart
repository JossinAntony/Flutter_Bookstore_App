
import 'package:flutter/material.dart';
import 'package:flutter_bookstore_app/pages/addBooks.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AddBooks(),
    );
  }
}
