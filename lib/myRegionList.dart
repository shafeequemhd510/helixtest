
import 'package:countries/GetAllRegionResponse.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyDoctorList extends StatefulWidget {
  final String doctors;
  final GetAllRegionResponse countries;
  GestureTapCallback onTapF;

   MyDoctorList({Key key, this.doctors,this.onTapF,this.countries}) : super(key: key);
  @override
  _MyDoctorListState createState() => _MyDoctorListState();
}

class _MyDoctorListState extends State<MyDoctorList> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible:
widget.countries==null&&widget.doctors==""?false:true,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: GestureDetector(
          onTap: widget.onTapF,
          child: Container(
//        width: double.infinity,
//          width: double.infinity,
            //height: MediaQuery.of(context).size.height*.118,
            decoration: BoxDecoration(
              //color: Color(0xffFFFFFF),
              border: Border.all(color: Color(0xffFFFFFF), width: 1),
              borderRadius: BorderRadius.all(Radius.circular(10)),
//            color:  Colors.teal ,
//            color: isSelected ? Colors.teal :  Colors.transparent,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
//                crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*.01),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      new BorderRadius.all(Radius.circular(100)),
                                  border:
                                      Border.all(width: 3, color: Colors.white)),
                              child: CircleAvatar(
                                radius: MediaQuery.of(context).size.width * 0.08,
                                child: widget.countries==null?Text(""):SvgPicture.network(
                                  widget.countries.flag,
                                  placeholderBuilder: (context) => CircularProgressIndicator(),
                                  height: 128.0,
                                ),),
                        ),
                        )],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * .03),
                      child: Container(
                        width: MediaQuery.of(context).size.width * .45,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              widget.countries==null?
                              widget.doctors:widget.countries.name,
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * .035,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff404040)),
                            ),

                          ],
                        ),
                      ),
                    ),
//              Spacer(),

                    Spacer(),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                          GestureDetector(
                            onTap: widget.onTapF,
                            child: Icon(
                              Icons.favorite_border,
                              color: Color(0xff999999),
                              size: MediaQuery.of(context).size.width*.04,
                            ),
                          //),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*.004),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        .004),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Color(0xff999999),
                                  size: MediaQuery.of(context).size.width*.04,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .00,
                              ),


                              //textAlign:TextAlign.right,
//                                overflow: TextOverflow.ellipsis,
                            ],
                          ),
                        ),

                      ],
                    ),

//              Spacer(),
                    SizedBox(
                      width: 0,
                    ),

                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
