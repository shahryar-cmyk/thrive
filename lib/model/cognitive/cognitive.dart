import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hangup/model/cognitive/green_intensity.dart';
import 'package:hangup/model/cognitive/red_intensity.dart';
import 'package:hangup/model/cognitive/yellow_intensity.dart';
import 'package:rich_alert/rich_alert.dart';
import './levelset.dart';

class Cognitive extends StatefulWidget {
  @override
  _CognitiveState createState() => _CognitiveState();
}

class _CognitiveState extends State<Cognitive> {
  List greenTask = [];
  List yellowIntensity = [
    Level(name: "BasicInnerCommand1", example: 'assets/images/image1.jpg'),
    Level(
      name: 'BasicInnerCommand2',
    ),
    Level(
      name: 'BasicInnerCommand3',
    ),
    Level(
      name: 'BasicInnerCommand4',
    ),
    Level(
      name: 'BasicInnerCommand5',
    ),
  ];
  List redIntensity = [
    Level(name: "BasicInnerCommand1", example: 'assets/images/image1.jpg'),
    Level(
      name: 'BasicInnerCommand2',
    ),
    Level(
      name: 'BasicInnerCommand3',
    ),
    Level(
      name: 'BasicInnerCommand4',
    ),
    Level(
      name: 'BasicInnerCommand5',
    ),
  ];
  var random;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  addGreenTask() {
//    random = (greenIntensity.toList()..shuffle()).first;
//    setState(() {
//      greenTask.add(Level(
//          name: random.name,
//          example: random.example
//      ));
//    });
  }

  greenAlert(randomItem) {
    // Go through all elements.
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return RichAlertDialog(
            //uses the custom alert dialog
            alertTitle: Text(
              "Green Intensity Task",
              style: GoogleFonts.mcLaren(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                  fontSize: 25),
            ),
            alertSubtitle: Text(
              randomItem,
              style: GoogleFonts.mcLaren(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 20),
            ),
            alertType: RichAlertType.SUCCESS,
          );
        });
  }

  yellowAlert(randomItem) {
    // Go through all elements.

    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return RichAlertDialog(
            //uses the custom alert dialog
            alertTitle: Text(
              "Yellow Intensity Task",
              style: GoogleFonts.mcLaren(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                  fontSize: 25),
            ),
            alertSubtitle: Text(
              randomItem,
              style: GoogleFonts.mcLaren(
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                  fontSize: 20),
            ),
            alertType: RichAlertType.SUCCESS,
          );
        });
  }

  redAlert(randomItem) {
    // Go through all elements.
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Center(
            child: RichAlertDialog(
              //uses the custom alert dialog
              alertTitle: Text(
                "Red Intensity Task",
                style: GoogleFonts.mcLaren(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                    fontSize: 25),
              ),
              alertSubtitle: Text(
                randomItem,
                style: GoogleFonts.mcLaren(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 20),
              ),
              alertType: RichAlertType.SUCCESS,
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 5,
        ),
        Container(
          height: MediaQuery.of(context).size.height / 3.8,
          width: double.infinity,
          child: Stack(
            children: <Widget>[
              InkWell(
                child: Container(
                  color: Colors.green.withOpacity(0.9),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => GreenINTENSITY()));
                },
              ),
              Center(
                  child: Text(
                'Green',
                style: GoogleFonts.mcLaren(
                    fontWeight: FontWeight.w800,
                    fontSize: 30,
                    color: Colors.white),
              )),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: MediaQuery.of(context).size.height / 3.8,
          width: double.infinity,
          child: Stack(
            children: <Widget>[
              InkWell(
                child: Container(
                  color: Colors.yellow.withOpacity(0.7),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => YellowIntensity()));
                },
              ),
              Center(
                  child: Text(
                'Yellow',
                style: GoogleFonts.mcLaren(
                    fontWeight: FontWeight.w800,
                    fontSize: 30,
                    color: Colors.white),
              )),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: MediaQuery.of(context).size.height / 3.8,
          width: double.infinity,
          child: Stack(
            children: <Widget>[
              InkWell(
                child: Container(
                  color: Colors.red.withOpacity(0.9),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => RedINTENSITY()));
                },
              ),
              Center(
                  child: Text(
                'Red',
                style: GoogleFonts.mcLaren(
                    fontWeight: FontWeight.w800,
                    fontSize: 30,
                    color: Colors.white),
              )),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
//    return Column(
//      children: <Widget>[
//        Center(child: Text("Green Intensity",style: GoogleFonts.mcLaren(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),)),
//        Expanded(
//          child: ListView.separated(
//              itemBuilder: (BuildContext context, index) {
//                int i=index+1;
//                return Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                  children: <Widget>[
//                    Flexible(child: Text("$i) "+greenTask[index].name,style: GoogleFonts.mcLaren(color:Colors.green,fontWeight: FontWeight.bold,fontSize: 20),)),
//
//                    RaisedButton(
//                      child: Text("Example",style:  GoogleFonts.mcLaren(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 15,letterSpacing: 1),),
//                      elevation: 5,
//                      onPressed: (){
//                        greenAlert(greenTask[index].example);
//                      },
//
//                    ),
//                    RaisedButton(
//
//                      child: Text("Cognitive",style:  GoogleFonts.mcLaren(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 15,letterSpacing: 1),),
//                    onPressed: (){
//                      addGreenTask();
//                    },
//                      elevation: 5,
//                    )
//                  ],
//                );
//              },
//              separatorBuilder: (_,__)=>Divider(height: 5,),
//              itemCount: greenTask.length),
////          child: Column(
////            children: <Widget>[
////              Center(
////                  child: Text("Green Intensity",style: GoogleFonts.mcLaren(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),)
////              ),
//
////
////
////            ],
////          ),
//        ),
//        Divider(height: 10,color: Colors.black,),
//        Center(child: Text("Yellow Intensity",style: GoogleFonts.mcLaren(color: Colors.yellow,fontSize: 20,fontWeight: FontWeight.bold),)),
//        Expanded(
//          child:  ListView.separated(
//              itemBuilder: (BuildContext context, index) {
//                return Text(greenTask[index].name);
//              },
//              separatorBuilder: (_,__)=>Divider(height: 5,),
//              itemCount: greenTask.length),
//        ),
//        Divider(height: 10,color: Colors.black,),
//        Center(child: Text("Yellow Intensity",style: GoogleFonts.mcLaren(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),)),
//        Expanded(
//          child:  ListView.separated(
//              itemBuilder: (BuildContext context, index) {
//                return Text(greenTask[index].name);
//              },
//              separatorBuilder: (_,__)=>Divider(height: 5,),
//              itemCount: greenTask.length),
//        ),
//      ],
//    );
  }
}
