import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Seller/login/ui/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
    return MaterialApp(
        title: " Bhaiyya_app",
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder> {
        '/': (BuildContext context) => SplashPage(),
          '/first': (BuildContext context) => FirstPage()
        }
     );

  }
}
class SplashPage extends StatefulWidget{
  @override
  SplashPageState createState() => SplashPageState();  
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3) , (){Navigator.of(context).pushReplacementNamed("/first");});
  }
  @override
  Widget build(BuildContext context) {
    final X = MediaQuery
        .of(context)
        .size
        .width;
    final Y = MediaQuery
        .of(context)
        .size
        .height;
   return Scaffold(
     body: Container(
       padding: EdgeInsets.only(top: Y/3+30),
       height: Y,
       width: X,
       alignment: Alignment.center,  
         child: Column(
           children: [
             CircleAvatar(
               backgroundColor: Colors.black,
               radius: 50,
               child: Image.asset("assets/images/google_icon.png"),
             ),
             SizedBox(
               height: Y*.03,
             ),
             Text(
               "welcome to".toUpperCase(),
               style: TextStyle(
                 fontSize: 30.0,
                 color: Colors.black12,
               ),
             )
           ],
         ),
     ),
   );
  }
}

class FirstPage extends StatefulWidget {
  @override
  FirstPageState createState() => FirstPageState();
}

class FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
     final X = MediaQuery.of(context).size.width;
    final Y = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Container(
        height: Y,
        width: X,
        padding: EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Column(
          children: [
            Image.asset('assets/images/google_icon.png',
              height: Y*.35,
            ),
             Text(" WELCOME !",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                )
            ),
            SizedBox(height: Y/2 - Y/5),
            Container(
              width: X*.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: X*.43,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.green),
                        ),
                        color: Colors.white,
                        textColor: Colors.black,
                        padding: EdgeInsets.all(10.0),
                        elevation: 7.0,
                        child: Text("Sign up".toUpperCase()),
                        onPressed: (){
//                          Navigator.push(context,
//                              MaterialPageRoute(builder: (context) => LoginPage()));
//                        todo: for register page
                        }),
                  ),
                  Container(
                    width: X*.43,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.green),
                        ),
                        color: Colors.white,
                        textColor: Colors.black,
                        padding: EdgeInsets.all(10.0),
                        elevation: 7.0,
                        child: Text("Sign in".toUpperCase()),
                        onPressed: (){
//                        Navigator.push(context,
//                        MaterialPageRoute(builder: (context) => Cus_LoginPage()));
//                         }todo: for login page
                        }),
                  ),
                ],
              ),
            ),
            SizedBox(height: Y*.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Become a Seller?',
                ),
                SizedBox(width: 5.0),
                InkWell(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage())); },
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
