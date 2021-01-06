import 'package:countries/SplashScreen/splashScreen.dart';
import 'package:countries/helix.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main(){ runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(

      statusBarColor: Colors.blue,
      statusBarIconBrightness: Brightness.dark,
//statusBarColor: Color(0xff80A15A)
    ));
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MYDOCQ',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),

        home: SplashScreen(),


        routes: <String, WidgetBuilder>{
//          '/login': (BuildContext context) => SimpleLoginPage(),

        }

    );
  }
}

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context,p){
          if(p==0){
            return Text("single line");
          }else{
            return Text("lsdkfjldsj sdfjlsdjf psdfjl dsflkdj dfjhfgh sdjfjhsdojfo sdjfojdsofhoehfhoiejfodljfo");

          }
        },
      ),
    );
  }
}
