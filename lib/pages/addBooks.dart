import 'package:flutter/material.dart';
import 'package:flutter_bookstore_app/datamodels/bookmodel.dart';
import 'package:flutter_bookstore_app/pages/viewBooks.dart';

class AddBooks extends StatelessWidget {

  TextEditingController bookTitleCntrlr = TextEditingController();
  TextEditingController bookAuthorCntrlr = TextEditingController();
  TextEditingController bookDistributorCntrlr = TextEditingController();
  TextEditingController bookDescriptionCntrlr = TextEditingController();
  TextEditingController bookPriceCntrlr = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xff67B26F),
                  Color(0xff4ca2cd),
                ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
              ),
              child: SingleChildScrollView(
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.96,
                    padding: EdgeInsets.all(10),

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
                        GestureDetector(
                          onTap: (){
/*                          var bookTitle = bookTitleCntrlr.text;
                            var bookAuthor = bookAuthorCntrlr.text;
                            var bookDistributor = bookDistributorCntrlr.text;
                            var bookDescription = bookDescriptionCntrlr.text;
                            var bookPrice = bookPriceCntrlr.text;
                            print(bookTitle + ', ' + bookAuthor + ', ' + bookDistributor + ', ' + bookDescription + ', ' + bookPrice);
                            */

                            BookModel book = BookModel(title: bookTitleCntrlr.text, author: bookAuthorCntrlr.text, description: bookDescriptionCntrlr.text, distributor: bookDistributorCntrlr.text, price: double.parse(bookPriceCntrlr.text));
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewBooks()));
                          },
                          child: Container(
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
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
