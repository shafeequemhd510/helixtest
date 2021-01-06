import 'package:flutter/material.dart';

class Helix extends StatefulWidget {
  @override
  _HelixState createState() => _HelixState();
}

class _HelixState extends State<Helix> {
  @override
  void initState() {
    super.initState();
//    getShared();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff1cba6c),
//      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        centerTitle: true,
        iconTheme: IconThemeData(
            color: Color(0xff1cba6c)
        ),
        title:
        Text(
          "MyHelix",
          textAlign: TextAlign.center,
          style: TextStyle(
            color:Color(0xff1cba6c),
            fontFamily: 'telegrafico',
            fontWeight: FontWeight.bold,
            // fontStyle: FontStyle.italic,
            fontSize: MediaQuery.of(context).size.width*.06,),
        ),

      ),

      body: Container(
        child: Text("india"),
      ),
    );
  }
}
