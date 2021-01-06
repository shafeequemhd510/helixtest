


//import 'myRequest.dart';

import 'dart:io';

import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {


  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
//  SharedPreferences _pref;

  @override
  List<String> events = [
    "Home",
    "Exit",
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserDetails();
//    getlocation();
  }

  getUserDetails() async {
//    _pref = await SharedPreferences.getInstance();
  }

  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.16,
            child: UserAccountsDrawerHeader(
              accountName: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mohd Shafeeque",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .040),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(
                      "Flutter Developer",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * .03),
                    ),
                  ),
                ],
              ),
              accountEmail: Text(
                "sha@gmail.com",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * .033),
              ),
            ),
          ),

          Container(
            //height: 46,
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'Home',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * .037,
                    fontStyle: FontStyle.normal),
              ),
              onTap: () => {
                Navigator.of(context).pop(),
              },
            ),
          ),Container(
            //height: 46,
            child: ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text(
                'Exit',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * .037,
                    fontStyle: FontStyle.normal),
              ),
              onTap: () => {
//                Toast.show("Option disabled", context,
//                    duration: Toast.LENGTH_LONG, gravity: Toast.CENTER),
              _showDialogforconfirmTm()
              },
            ),
          ),


        ],
      ),
    );
  }

  void _showDialogforconfirmTm() {
    // flutter defined function
    String tokennumber;
    String date;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          title: new Text("Exit ?"),
          content: new Text("Are you sure you want to Exit? "),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("NO"),
              onPressed: () {
                setState(() {});

                /*Navigator.of(context).pushNamedAndRemoveUntil(
                    '/upcoming', (Route<dynamic> route) => false);*/
                Navigator.of(context).pop();
              },
            ),
            new FlatButton(
              child: new Text("Proceed"),
              onPressed: () {
                Navigator.of(context).pop();
                exit(0);



              },
            ),
          ],
        );
      },
    );
  }

}
