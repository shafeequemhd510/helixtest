import 'dart:async';
import 'dart:io';

import 'package:countries/home.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  SplashScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

   // checkUserConfig();
    timeOut();

  //  getVersionDetails();
  }

  void timeOut() {
    Timer(Duration(seconds: 5), () async {

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );

    });
  }

  @override
  Widget build(BuildContext context) {
//    cntxt = context;
    return Scaffold(
      body: Center(
          child: Text("Felix Technologies...",style: TextStyle(color: Colors.blue,fontSize: MediaQuery.of(context).size.width*.07),)

         ,

    ));
  }

}
