import 'package:flutter/material.dart';

class ViewBooks extends StatefulWidget {
  @override
  _ViewBooksState createState() => _ViewBooksState();
}

class _ViewBooksState extends State<ViewBooks> {
  var bookArray = ['book1', 'book2', 'book3'];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bookArray.length,
        itemBuilder: (context, index){
          return Card(
            elevation: 5,
            child: ListTile(
              title: Text(bookArray[index]),
            ),
          );
        });
  }
}
