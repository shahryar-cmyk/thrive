import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rich_alert/rich_alert.dart';
class CoordinationIntensity extends StatefulWidget {
  @override
  _CoordinationIntensityState createState() => _CoordinationIntensityState();
}

class _CoordinationIntensityState extends State<CoordinationIntensity> {
  var greenList=['Squat with Focal Point Challenge','Cross Body March','Same Side March','Saccades','Ball Toss- Both Hands Toss, Catch','Convergence/Divergence','Head Nodding Walking','Forward Focus with Head Turns','Forward Focus with Nodding','Metronome','Horizontal Chop','Figure 8Bounce ','Ball on Racquet','Dribble Ball','Stringing Beads','Rhythmic Clapping'];
  var yellowlist = ['Jumping Jacks','Ball Toss- Wall, Catch','Ski Jump','Ball Toss- Right, Bounce, Left, Bounce','Ball Toss- Single Hand Toss, Catch','Alternate Side Bounce Catch','Head Turns Walking','Ball Toss- Wall, Bounce, Catch','Chop and Lift','Galloping','Jumping','Single Leg Toe Taps on Cone'];
  var redList =['Reaction Side Step','Reaction AP Steps','Walk Toss Catch','Grapevine/Carioca','Punch, Kick (Front, Side, Back)','Jump Rope (Double Leg, Single Leg, Double Under, Cross-Over)','Agility Ladder (Forward- 1 Touch, 2 Touch Lateral Taps)','Skipping'];
  greenAlert(){
    // Go through all elements.
    var randomItem = (greenList.toList()..shuffle()).first;
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return RichAlertDialog( //uses the custom alert dialog
            alertTitle: Text("Green Intensity Task",style:GoogleFonts.mcLaren(fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor,fontSize: 25) ,),
            alertSubtitle:Text(randomItem,style: GoogleFonts.mcLaren(fontWeight: FontWeight.bold,color: Colors.green,fontSize: 20),),
            alertType: RichAlertType.SUCCESS,
          );
        }
    );
  }
  yellowAlert(){
    // Go through all elements.
    var randomItem = (yellowlist.toList()..shuffle()).first;
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return RichAlertDialog( //uses the custom alert dialog
            alertTitle: Text("Yellow Intensity Task",style:GoogleFonts.mcLaren(fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor,fontSize: 25) ,),
            alertSubtitle:Text(randomItem,style: GoogleFonts.mcLaren(fontWeight: FontWeight.bold,color: Colors.yellow,fontSize: 20),),
            alertType: RichAlertType.SUCCESS,
          );
        }
    );
  }
  redAlert(){
    // Go through all elements.
    var randomItem = (redList.toList()..shuffle()).first;
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return RichAlertDialog( //uses the custom alert dialog
            alertTitle: Text("Red Intensity Task",style:GoogleFonts.mcLaren(fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor,fontSize: 25) ,),
            alertSubtitle:Text(randomItem,style: GoogleFonts.mcLaren(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 20),),
            alertType: RichAlertType.SUCCESS,
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
child:
        Column(
              children: <Widget>[
                SizedBox(
                  height: 5,),
                  Container(
                    height: MediaQuery.of(context).size.height/3.8,
                    width: double.infinity,
                    child: Stack(
                      children: <Widget>[
                        InkWell(

                          child: Container(color: Colors.green.withOpacity(0.9),),
                          onTap: (){
                              greenAlert();
                          },

                        ),
                        Center(child: Text('Green', style: GoogleFonts.mcLaren(
                            fontWeight: FontWeight.w800,
                            fontSize: 30,
                            color: Colors.white

                        ),)),
                        SizedBox(height: 10,),

                      ],

                    ),

                  ),
                 SizedBox(
                  height: 5,),
                  Container(
                    height: MediaQuery.of(context).size.height/3.8,
                    width: double.infinity,
                    child: Stack(
                      children: <Widget>[
                        InkWell(

                          child: Container(color: Colors.yellow.withOpacity(0.7),),
                          onTap: (){
                           yellowAlert();
                          },

                        ),
                        Center(child: Text('Yellow', style: GoogleFonts.mcLaren(
                            fontWeight: FontWeight.w800,
                            fontSize: 30,
                            color: Colors.white

                        ),)),
                        SizedBox(height: 10,),

                      ],

                    ),

                  ),
                   SizedBox(
                  height: 5,),
                  Container(
                    height: MediaQuery.of(context).size.height/3.8,
                    width: double.infinity,
                    child: Stack(
                      children: <Widget>[
                        InkWell(

                          child: Container(color: Colors.red.withOpacity(0.9),),
                          onTap: (){
                            redAlert();
                          },

                        ),
                        Center(child: Text('Red', style: GoogleFonts.mcLaren(
                            fontWeight: FontWeight.w800,
                            fontSize: 30,
                            color: Colors.white

                        ),)),
                        SizedBox(height: 10,),

                      ],

                    ),

                  ),
              ],
            ),

          
          );
        
           
  }
}