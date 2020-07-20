import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rich_alert/rich_alert.dart';

class EnduranceIntensity extends StatefulWidget {
  @override
  _EnduranceIntensityState createState() => _EnduranceIntensityState();
}

class _EnduranceIntensityState extends State<EnduranceIntensity> {
  var greenList=['Jabs','Dbl Shoulder press','Dbl Shoulder abduction','YMCAs','Uppercut','Speed bag forward','Hook punches','Small shoulders circles forward','Small shoulders circles backward','Large shoulder circles backward','Fast feet in sitting','Carioca- crossover walk','Seated marches','Seated LAQ','Alternating shoulder press','Alt shoulder abduction','Disco point','Alt shoulder flexion','Cross body punches','Freestyle swims','Backstrokes','Seated clamshells','Arm sprints','Pick a sports move!'];
  var yellowlist = ['Lateral walks/shuffle','Front kicks','Heel raises','Standing marches','Standing hip abduction','Toe Raises','Sit to stand','St knee flex','Mini squats','Side kicks','Donkey Kicks','Monster Walks','Mini Sumo Squats','Wall lean shoulder taps','Lateral hip thrust/twist','CW square walks','CCW square walks','St hip extension','Walk in place w/ arm swings','Walk in place/ shoulder rolls','Freestyle dance!'];
  var redList =['Toe walk','Heel walk','Fwd step ups','Lat step ups','Step up w/ high knee','Walking marches','Lat toe walks','Lat heel walk','Lunge pulses','Toy soilders','Pulse squats','Pulse squats','deadlifts'];

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
    return  SingleChildScrollView(
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
