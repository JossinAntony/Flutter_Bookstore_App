import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bookstore_app/pages/addBooks.dart';

class Menu extends StatelessWidget {

  TextStyle buttonTextStyle(){
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Options'),
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
/*            height: MediaQuery.of(context).size.height * .2,
            width: MediaQuery.of(context).size.height * .95,*/
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => AddBooks())),
                  child: Container(
                    height: 70,
                    width: 180,
                    decoration: BoxDecoration(
                      border: Border.all(
                        style: BorderStyle.solid,
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(colors: [Color(0xffee0979).withOpacity(.65), Color(0xffff6a00).withOpacity(.7),]),
                    ),
                    child: Center(
                      child: Text('ADD BOOKS', style:
                      buttonTextStyle()),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    ));
  }
}
