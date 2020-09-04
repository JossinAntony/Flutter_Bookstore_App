import 'package:flutter/material.dart';

class SearchBooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SEARCH..'),
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
            child: Container( 
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.only(top: 20.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Enter the book name here',
                      hintStyle: TextStyle(
                        color: Colors.white60,
                      )
                    ),

                  )
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
