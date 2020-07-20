import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';


import 'Catogaries.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5),()=>{
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder:(context)=>FirtScreen()
      ))
    });
    return Scaffold(
      body: Container(
       color: Colors.white,
        child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
       Container(height: 400,width: 400, child: Image.asset('assets/images/logo.PNG'),),
          SpinKitHourGlass(color: Colors.blue[900],size: 60,),
        ],),),
      ),
    );
  }


}
