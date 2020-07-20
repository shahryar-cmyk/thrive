import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './levelset.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
class YellowIntensity extends StatefulWidget {
  @override
  _YellowIntensityState createState() => _YellowIntensityState();
}

class _YellowIntensityState extends State<YellowIntensity> {
  List yellowlevel = [
    Level(
      name: 'Self help books',
      example:
      '7 Habits of Highly Effective People, The Power of Now, Rich Dad/Poor Dad, How to Win Friends and Influence People, Think and Grow Rich, The Power of Positive Thinking, Awaken the Giant Within, The Secret, The Four Agreements, The Celestine Prophecy, Eat That Frog, Failing Forward- Turning Mistakes Into Stepping Stones for Success, The Last Lecture, The Lifechanging Magic of Tidying Up, ',
    ),
    Level(
      name: 'Prestigious colleges',
      example:
      'Harvard, Stanford, Yale, Brown, Princeton, Columbia, Dartmouth, UPenn, Duke, UNC-Chapel Hill, NYU, Rice, U Michigan, UC-Berkeley, U Southern California (USC), Villanova, Georgetown, Colby, Williams, Amherst, Swarthmore, MIT, Carnegie Mellon, Johns Hopkins, Navy, Army, Air Force, Bowdoin, Cambridge, Oxford ',
    ),
    Level(
      name: 'Colleges in the US',
      example:
      'U Vermont, UMass- Amherst, Boston College, Boston University, URI (Rhode Island), Rutgers, Penn S	tate, Miami, Florida, U Texas, Wiscinsin, Iowa, Nebraska, Alabama, Georgia Tech, Holy Cross, Providence, U Conn, Villanova, Temple, Fordham, Arizona, Colorado, Hawaii, ',
    ),
    Level(
      name: 'Courses at Colleges',
      example:
      'Art, Literature, History, Music, Religion, Film, Marketing, Biology, Chemistry, Physics, Criminology, Sociology, Psychology, Spanish, French, German, Chinese, Japanese,  Culinary, ',
    ),
    Level(
      name: 'Degrees obtained ',
      example:
      ' Associates, Bachelor of Arts, Bachelor of Science, Bachelor of Fine Art, Master of Arts,Master of Science,    Master of Fine Art, PhD, Doctoral, MD, DMD (Dentist),DVM (Vet)',
    ),
    Level(
      name: 'Things found in a map ',
      example:
      ' Mountain, Lake, River, State, Country, Ocean, Sea, Equator, Latitude, Longitude, South Pole, North Pole, Legend, Scale, Compass Rose, Valley, County, Border',
    ),
    Level(
      name: 'Name well known Statues /monuments',
      example:
      'Statue of Liberty, Mount Rushmore, Venus de Milo, David, Christ the Redeemer, Moai Easter Island, The Thinker, Great Sphinx, Arc De Triomphe, Eiffel Tower, Pyramids, Big Ben, Liberty Bell, Lincoln Memorial, USS Arizona- Pearl Harbor, Washington Monument, Pantheon, Tomb of the Unknown Soldier, Gateway Arch, Vietnam Veterans Memorial, 9/11 Monument, ',
    ),
    Level(
      name: 'Super Bowl champions ',
      example:
      'PATRIOTS, Colts, Broncos, Chiefs, Dolphins, Cowboys, Seahawks, 49ers, Eagles, Ravens',
    ),
    Level(
      name: 'NFL Team Mascots',
      example:
      'PATRIOTS, Giants, Steelers, Jaguars, Titans, Colts, Bills, Buccaneers,Cardinals, Jets, Panthers',
    ),
    Level(
      name: 'College Team Mascots',
      example:
      'Scarlet Knights, Bruins, Trojans, Gamecocks, Gators, Longhorns, Nittany Lions, Buckeys, Terrapins, Ducks',
    ),
  ];
  @override
  var random;
  List yelloTask=[];
  void initState() {
    // TODO: implement initState
    super.initState();
    random = (yellowlevel.toList()..shuffle()).first;

    yelloTask.add(Level(
        name: random.name,
        example: random.example
    ));
  }
  addGreenTask(){
    random = (yellowlevel.toList()..shuffle()).first;
    setState(() {
      yelloTask.add(Level(
          name: random.name,
          example: random.example
      ));
    });
  }
  _showExample(example){
    var alertStyle = AlertStyle(
      animationType: AnimationType.fromTop,
      isCloseButton: false,
      isOverlayTapDismiss: false,
      descStyle: TextStyle(fontWeight: FontWeight.bold),
      animationDuration: Duration(milliseconds: 400),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
        side: BorderSide(
          color: Colors.grey,
        ),
      ),
      titleStyle: TextStyle(
        color: Theme.of(context).primaryColor,
      ),

    );
    return Alert(
      context: context,
      style: alertStyle,
      type: AlertType.success,
      title: "Example",
      desc: example,
      buttons: [
        DialogButton(
          child: Text(
              "Got it!",
              style: GoogleFonts.mcLaren(fontSize: 20,fontWeight: FontWeight.bold)),
          onPressed: () => Navigator.pop(context),
          color: Colors.yellow,
          radius: BorderRadius.circular(0.0),
        ),
      ],
    ).show();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Center(
            child: Text(
              'Yellow Intensity',
              style: GoogleFonts.mcLaren(fontWeight: FontWeight.bold,color: Colors.white,
                fontSize: 25,),
            )),
        backgroundColor: Colors.blue[800],
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, index) {
            int i=index+1;
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Activity",style: GoogleFonts.mcLaren(color:Theme.of(context).primaryColor,fontSize: 20,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child:  Row(
                    children: <Widget>[
                      Flexible(child: Text("$i) "+yelloTask[index].name,style: GoogleFonts.mcLaren(color:Colors.yellow,fontWeight: FontWeight.bold,fontSize: 20),))
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[

                      MaterialButton(
                        child: Text("Example",style:  GoogleFonts.mcLaren(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 15,letterSpacing: 1),),
                        elevation: 5,
                        onPressed: (){
                          _showExample(yelloTask[index].example);
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Theme.of(context).primaryColor)
                        ),
                      ),
                      MaterialButton(

                        child: Text("Cognitive",style:  GoogleFonts.mcLaren(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 15,letterSpacing: 1),),
                        onPressed: (){
                          addGreenTask();
                        },
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Theme.of(context).primaryColor)
                        ),
                      )
                    ],),
                ),

              ],
            );
          },
          separatorBuilder:(_,__)=>Divider(height: 5,),
          itemCount: yelloTask.length
      ),
    );
  }
}
