

import 'package:flutter/cupertino.dart';
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
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[

                  SizedBox(height: 14.0),

                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      hintText: "Enter Book name",
                      prefixIcon: Icon(Icons.book),
                    ),
                  ),

                  SizedBox(height: 14.0),

                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      hintText: "Enter the author name",
                      prefixIcon: Icon(Icons.person),
                    )
                  ),

                  SizedBox(height: 14.0),

                  TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        hintText: "Enter the Distributor name",
                        prefixIcon: Icon(Icons.business),
                      )
                  ),

                  SizedBox(height: 14.0),

                  TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        hintText: "Enter the book description",
                        prefixIcon: Icon(Icons.description),
                      )
                  ),

                  SizedBox(height: 14.0),

                  TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        hintText: "Enter the price",
                        prefixIcon: Icon(Icons.attach_money),
                      )
                  ),

                  SizedBox(height: 14.0),

                  RaisedButton(
                    onPressed: (){},
                    color:  Colors.cyan,
                    child: Text('Save'),
                  )
                ],
              ),
            ),
        ),
      )
    );
  }
}
