import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'package:countries/GetAllRegionResponse.dart';
import 'package:countries/countrylist.dart';
import 'package:countries/myRegionList.dart';
import 'package:http/http.dart' as http;
import 'package:countries/drawer.dart';
import 'package:flutter/material.dart';


class Countries extends StatefulWidget {


  List<GetAllRegionResponse> array=[];


   Countries(this.array);

   @override
  _CountriesState createState() => _CountriesState();
}

class _CountriesState extends State<Countries> {



  @override
  void initState() {

//    _currentIndex = 0;

    super.initState();

  }


  bool _showHome = false;
  final _scaffoldKey = new GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color(0xFFF5F5F5),
        appBar: AppBar(
          title: Text('My Services'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.menu, size: 27), // change this size and style
            onPressed: () => _scaffoldKey.currentState.openDrawer(),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue[400], Colors.blue],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter),
            ),
          ),
        ),
        drawer: MyDrawer(),
        body:
        Padding(
          padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*.02),
          child: Container(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: widget.array.length,
                scrollDirection: Axis.vertical,
                physics: ScrollPhysics(),
                itemBuilder: (context, position) {
                  var doctor = widget.array[position];
                  return MyDoctorList(
                    countries: doctor,
                    onTapF: () {
                      /*Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CountryList()),
                      );*/
                    },
                  );
                }),
          ),
        ));
  }




}

