import 'package:flutter/material.dart';
import 'package:flutter_bookstore_app/pages/addBooks.dart';
import 'package:flutter_bookstore_app/pages/searchBooks.dart';
import 'package:flutter_bookstore_app/pages/updateBooks.dart';
import 'package:flutter_bookstore_app/pages/deleteBooks.dart';
import 'package:flutter_bookstore_app/pages/viewBooks.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final pages = [ViewBooks(), AddBooks(), SearchBooks(), UpdateBooks(), DeleteBooks()];
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('BOOKSTORE'),
        ),
        body: pages[_pageIndex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.blue,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black38,
            onTap: (int index) {
              setState(() {
                _pageIndex = index;
              });
            },
            currentIndex: _pageIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                title: Text('VIEW BOOKS'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle),
                title: Text('ADD BOOKS'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('SEARCH BOOKS'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.cloud_upload),
                title: Text('UPDATE BOOKS'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.delete),
                title: Text('DELETE BOOKS'),
              ),
            ]),
      ),
    );
  }
}
