import 'package:flutter/material.dart';
import 'package:flutter_bookstore_app/pages/menupage.dart';

import 'addBooks.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  
  TextEditingController unameCntrlr = TextEditingController();
  TextEditingController pwdCntrlr = TextEditingController();
  
  final String UNAME = 'admin';
  final String PWD = '1234';
  
  bool _visibility = false;
  
  bool _checkCredentials(String uname, String pwd){
    if(((uname == UNAME) && (pwd == PWD)))
      {
        return true;
      }else {
      return false;
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('BOOKSTORE'),
              centerTitle: true,
              backgroundColor: Colors.blueGrey,
            ),
            body: SizedBox.expand(
              child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xff67B26F),
                      Color(0xff4ca2cd),
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height * 0.28,
                        width: MediaQuery.of(context).size.width * 0.9,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.transparent,
                          width: 1.5,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          children: <Widget>[
                            TextField(
                              controller: unameCntrlr,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                prefixIcon: Icon(Icons.person_outline),
                                hintText: 'username',
                                  hintStyle: TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white60,
                                  ),
                              ),
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 16,
                              ),
                              onTap: (){
                                setState(() {
                                  _visibility = false;
                                });
                              },
                            ),

                            SizedBox(height:10),

                            TextField(
                              controller: pwdCntrlr,
                             obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                prefixIcon: Icon(Icons.lock_outline),
                                hintText: 'password',
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white60,
                                ),
                              ),
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 16,
                              ),
                              onTap: (){
                                setState(() {
                                  _visibility = false;
                                });
                              },
                            ),

                            SizedBox(height:26),

                            ButtonTheme(
                              minWidth: MediaQuery.of(context).size.width,
                              height: 45,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(
                                  color: Colors.yellow.withOpacity(.4),
                                )
                              ),
                              child: RaisedButton.icon(onPressed: (){
                                setState(() {
                                  _visibility = !_checkCredentials(unameCntrlr.text, pwdCntrlr.text);
                                  if(!_visibility){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
                                  }
                                });
                              },
                                  icon: Icon(Icons.input),
                                  label: Text('LOG IN')),
                              buttonColor: Colors.blue.withOpacity(.55),
                            )
                          ],
                        ),
                      ),

                      SizedBox(height:40),

                      Visibility(
                          visible: _visibility,
                          child: Text('Invalid credentials! Please try again.', style: TextStyle(
                            color: Colors.red,
                          ))),

                    ],
                  )),
            )));
  }
}
