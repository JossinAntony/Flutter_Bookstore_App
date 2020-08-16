

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  TextEditingController bookTitleCntrlr = TextEditingController();
  TextEditingController bookAuthorCntrlr = TextEditingController();
  TextEditingController bookDistributorCntrlr = TextEditingController();
  TextEditingController bookDescriptionCntrlr = TextEditingController();
  TextEditingController bookPriceCntrlr = TextEditingController();


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
                    controller: bookTitleCntrlr,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      hintText: "Enter Book title",
                      prefixIcon: Icon(Icons.book),
                    ),
                  ),

                  SizedBox(height: 14.0),

                  TextField(
                    controller: bookAuthorCntrlr,
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
                      controller: bookDistributorCntrlr,
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
                      controller: bookDescriptionCntrlr,
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
                      controller: bookPriceCntrlr,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        hintText: "Enter the price",
                        prefixIcon: Icon(Icons.attach_money),
                      )
                  ),

                  SizedBox(height: 14.0),
                  /*
                  RaisedButton(
                    onPressed: (){
                      var bookTitle = bookTitleCntrlr.text;
                      var bookAuthor = bookAuthorCntrlr.text;
                      var bookDistributor = bookDistributorCntrlr.text;
                      var bookDescription = bookDescriptionCntrlr.text;
                      var bookPrice = bookPriceCntrlr.text;

                      print(bookTitle + ', ' + bookAuthor + ', ' + bookDistributor + ', ' + bookDescription + ', ' + bookPrice);
                    },
                    color:  Colors.cyan,
                    child: Text('Save'),
                  )
                  */
                  Container(
                    height: 60.0,
                    width: 600.0,
                    decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.circular(60.0),
                    ),
                    child: Center(
                      child: Text('Save', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.white,
                      ),),
                    ),
                  ),
                ],
              ),
            ),
        ),
      )
    );
  }
}
