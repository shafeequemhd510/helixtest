import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'package:countries/GetAllRegionResponse.dart';
import 'package:countries/countrylist.dart';
import 'package:countries/myRegionList.dart';
import 'package:http/http.dart' as http;
import 'package:countries/drawer.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {

  bool intiallogging = false;


  HomePage({this.intiallogging});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  bool isTappedOne=false;

  List<GetAllRegionResponse> getFavRegion=[];

  List<String> uniqueCompanyNames=[];
  List<String> contries=[];

  List<GetAllRegionResponse> first=[];

  List<GetAllRegionResponse> second=[];
  List<GetAllRegionResponse> third=[];
  List<GetAllRegionResponse> fourth=[];
  List<GetAllRegionResponse> fifth=[];
  List<GetAllRegionResponse> sixth=[];
  List<GetAllRegionResponse> array=[];

  bool loader= false;
  @override
  void initState() {

//    _currentIndex = 0;
  sentRequestGetFavDoc();
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
      body:loader?Center(child: CircularProgressIndicator(),):
      Padding(
        padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*.02),
        child: Container(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: uniqueCompanyNames.length,
              scrollDirection: Axis.vertical,
              physics: ScrollPhysics(),
              itemBuilder: (context, position) {
                var doctor = uniqueCompanyNames[position];
                return MyDoctorList(
                  doctors: doctor,
                  onTapF: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Countries(position==0?
                      first:position==1?second:position==2?third:position==3?fourth:position==4
                          ?fifth:position==5?sixth:sixth)),
                    );
                  },
                );
              }),
        ),
      ));
  }


  sentRequestGetFavDoc() async {
    setState(() {
      loader=true;
    });

    String url = "https://restcountries.eu/rest/v2/all";

    var response;
    try {
      response = await http.get(url);
    } catch (e) {
      print(e);
//      MyKey.getInternetGone(context,route: MyDoctor());


    }

    if(response?.statusCode==500){

      var result = json.decode(response.body);
      if(result["NetworkInstence"]){

//        MyKey.getLogicalError(context);
      }
      else{

//        MyKey.getNetworkDown(context);
      }

    }

    print(response.body);

    setState(() {
      getFavRegion = getAllRegionResponseFromJson(response.body);
//      _pref.setString(MyKey.bnr, json.encode(response.body));

       uniqueCompanyNames = getFavRegion.map<String>(
              (c) => (c.region ))
          .toSet().toList();
       loader=false;
//       contries.addAll(getFavRegion.map((e) => e.region))
      first = getFavRegion.where((element) => element.region==uniqueCompanyNames[0]).toList();
      second = getFavRegion.where((element) => element.region==uniqueCompanyNames[1]).toList();
      third = getFavRegion.where((element) => element.region==uniqueCompanyNames[2]).toList();
      fourth = getFavRegion.where((element) => element.region==uniqueCompanyNames[3]).toList();
      fifth = getFavRegion.where((element) => element.region==uniqueCompanyNames[4]).toList();
      sixth = getFavRegion.where((element) => element.region==uniqueCompanyNames[5]).toList();


    });


//    sentGetAllCategoryRequest();
  }

}

