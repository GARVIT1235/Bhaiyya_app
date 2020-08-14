import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final X = MediaQuery.of(context).size.width;
    final Y = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        elevation: 6.0,
        title:    Text("login".toUpperCase(),
            style: TextStyle(
              color: Colors.white,
            )
        ),
        leading: IconButton(
          icon:Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
        body: Container(
            height: Y,
            width: X,
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Column(
                children: [
                  Text("Seller".toUpperCase(),
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blueAccent,
                      )
                  ),
                  SizedBox(height: Y/4),
                  Container(
                    width: X*.85,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                          side: BorderSide(color: Colors.white),
                        ),
                        color: Colors.lightGreen,
                        textColor: Colors.white,
                        padding: EdgeInsets.all(10.0),
                        elevation: 7.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/google_icon.png',
                              height: 30,
                            ),
                            SizedBox(width: 12.0),
                            Text("Log in with Google".toUpperCase(),
                            style: TextStyle(
                              color: Colors.white
                            ),),
                          ],
                        ),
                        onPressed: (){
                          //todo: connect with firebase for google login in
                         }),
                  ),
                    ],
                  ),
            ),
    );
  }
}
