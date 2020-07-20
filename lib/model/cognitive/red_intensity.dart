import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './levelset.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
class RedINTENSITY extends StatefulWidget {
  @override
  _RedINTENSITYState createState() => _RedINTENSITYState();
}

class _RedINTENSITYState extends State<RedINTENSITY> {
  List redList = [
    Level(
      name: 'US states Alphabetically',
      example:
      'Alabama, Alaska, Arizona, Arkansas, California, Colorado, Connecticut, Delaware, Florida, Georgia, Hawaii, Idaho, Illinois, Indiana, Iowa, Kansas, Kentucky, Louisiana, Maine, Maryland, Massachusetts, Michigan, Minnesota, Mississippi, Missouri, Montana, Nebraska,Nevada, New Hampshire, New Jersey, New Mexico, New York, North Carolina, North Dakota, Ohio, Oklahoma, Oregon, Pennsylvania, Rhode Island, South Carolina, South Dakota, Tennessee, Texas, Utah, Vermont, Virginia, Washington, West Virginia,Wisconsin, Wyoming ',
    ),
    Level(
        name: 'US capital Alphabetically',
        example:
        'Albany - New York, Annapolis - Maryland, Atlanta - Georgia, Augusta - Maine, Austin - Texas, Baton Rouge - Louisiana, Bismarck - North Dakota, Boise - Idaho,Boston - Massachusetts,Carson City - Nevada,Charleston - West Virginia,Cheyenne - Wyoming,Columbia - South Carolina,Columbus - Ohio,Concord - New Hampshire,Denver - Colorado,Des Moines - Iowa,Dover - Delaware,Frankfort - Kentucky,Harrisburg - Pennsylvania,Hartford - Connecticut,Helena - Montana,Honolulu - Hawaii,Indianapolis - Indiana,Jackson - Mississippi,Jefferson City - Missouri,Juneau - Alaska,Lansing - Michigan,Lincoln - Nebraska,Little Rock - Arkansas,Madison - Wisconsin,Montgomery - Alabama,Montpelier - Vermont,Nashville - Tennessee,Oklahoma City - Oklahoma,Olympia - Washington,Phoenix - Arizona,Pierre - South Dakota,Providence - Rhode Island,Raleigh - North Carolina,Richmond - Virginia,Sacramento - California,Salem - Oregon,Salt Lake City - Utah,Santa Fe - New Mexico,Springfield - Illinois,St. Paul - Minnesota,Tallahassee - Florida,Topeka - Kansas,Trenton - New Jersey'),
    Level(
        name: 'Top 10 Most abundant elements in the World',
        example:
        'Hydrogen, Helium, Oxygen, Carbon, Neon, Nitrogen,  Magnesium, Silicon, Iron, Sulfur'),
    Level(
        name: 'Top 20 Languages spoken in the world',
        example:
        'English, Mandarin Chinese, Hindi, Spanish, French, Standard Arabic, Bengali, Russian, Portuguese, Indonesian, Urdu, German, Japanese, Swahili,  Marathi, Telugu, Turkish, Yue Chinese (Including Cantonese),  Tamil, Western Punjabi'),
    Level(
        name: 'Top 10 Most visited countries in the world',
        example:
        'France, Spain, United States, China, Italy, Turkey, Mexico, Germany, Thailand, United Kingdom'),
    Level(
        name: 'Top 10 things people do to relax and destress',
        example:
        'Yoga, Listen to Music, Meditate, Paint, Go for a walk, Watch the sunrise, Take a hot/cold shower, Play a board game, Go for a swim, Get a massage'),
    Level(
        name:
        'Top 10 places to live in America, According to US news and world report',
        example:
        'Austin, Texas, Denver, Colorado, Colorado Springs, Colorado, Fayetteville, Arkansas, Des Moines, Iowa, Minneapolis-St. Paul, Minnesota, San Francisco, California, Portland, Oregon, Seattle, Washington, Raleigh & Durham, North Carolina'),
    Level(
        name: 'Top 10 Happiest States in America',
        example:
        'Hawaii, Utah, Minnesota, California, New Jersey, Idaho, Massachusetts, Maryland, Nebraska, Connecticut'),
    Level(
        name: 'Top 10 Musical Instruments',
        example:
        'Piano, Guitar, Violin, Drums,  Saxophone, Flute, Clarinet,  Cello, Trumpet, Harp'),
    Level(
        name: 'Items used by a fisherman',
        example:
        'Rod, Reel,  Line, Hooks, Sinkers,  Bobbers, Hardbaits, Inline Spinners, Soft Plastics'),
    Level(
        name: 'Things people sit on',
        example:
        'Chair, Bench, Couch, Sofa, Ottoman, Chaise Lounge, Love Seat'),
    Level(
        name: 'Things in a refrigerator',
        example: 'Milk, Vegetable, Water, Beer, Cheese'),
    Level(
        name: 'Rooms in a house',
        example: 'Living Room, Bedroom, Kitchen, Bathroom, Dining Room'),
    Level(
        name: 'Card games',
        example:
        'UNO, Blackjack, Cards Against Humanity, Poker, Spoon, Magic, Hearts, Exploding Kittens, War, Solitaire'),
    Level(
        name: 'Ice cream flavors',
        example:
        'Vanilla, chocolate, strawberry, rocky road, pistacchio, rum raisin, cookie dough, coffee, chocolate chip, mint chocolate chip, cookies and cream, Neapolitan'),
    Level(
        name: 'Kinds of footwear',
        example:
        'Socks,  slippers, Sneakers,high heels, boat shoes, tennis shoes, baseball cleats, steel-toe boots, football cleats, golf shoes, '),
    Level(
      name: 'Things made of leather',
      example:
      'Jacket, car interior, hand bag, overcooked steak, pants, wallet, clutch, shoes, tool pouch, Slippers,',
    ),
    Level(
      name: 'Household chores',
      example:
      'Clean toilet, dust vacuum, dishes, laundry, mow the lawn, take out trash, clean room, make bed, walk dog, clean cat litter,',
    ),
    Level(
      name: 'Things you microwave',
      example:
      'Popcorn, leftovers, tea, coffee, pizza, soup, healthy choice, burritos, hungry man meals, microwave tv dinners ',
    ),
    Level(
      name: 'Ingredients in a stew',
      example:
      'Eggs, flour, sugar, oil, confectioners sugar, brown sugar, butter, margarine, food coloring, salt, milk, vanilla extract, vegetable oil, baking soda.',
    ),
    Level(
      name: 'Types of board games',
      example:
      'Chutes and ladders, monopoly, sorry, dungeons and dragons, risk, stratego, candyland, scrabble, checkers, backgammon Life, mouse trap, Candy land, Clue, Yatzee, Mancala',
    ),
    Level(
      name: 'Multiples of 5 backwards',
      example:
      '100, 95,90, 85,80,75,70,65,60,55,50,45,40,35,30,25,20,15,10,5',
    ),
    Level(
      name: 'Multiples of 10 backwards',
      example: '20,30,40,50,60,70,80, 90, 100',
    ),
    Level(
      name: 'Subtract 7  starting at 100',
      example: '100,93, 86,79,72,65,58,51,44,37,30,23,16,9,2',
    ),
    Level(
      name: 'Types of sports',
      example:
      'Soccer, Lacrosse, Boxing, Swimming,Basketball, Hockey, football, baseball, golf, track and field, skiing, softball, tennis, ping-pong, fencing , ultimate frisbee.',
    ),
    Level(
      name: 'Car Brands',
      example:
      'Ford, toyota, subaru, chevrolet, ferrari, buick, porsche, lamborghini, audi, honda, hyundai, ',
    ),
  ];
  @override
  var random;
  List redTask=[];
  void initState() {
    // TODO: implement initState
    super.initState();
    random = (redList.toList()..shuffle()).first;

    redTask.add(Level(
        name: random.name,
        example: random.example
    ));
  }
  addGreenTask(){
    random = (redList.toList()..shuffle()).first;
    setState(() {
      redTask.add(Level(
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
          color: Colors.red,
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
              'Red Intensity',
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
                      Flexible(child: Text("$i) "+redTask[index].name,style: GoogleFonts.mcLaren(color:Colors.red,fontWeight: FontWeight.bold,fontSize: 20),))
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
                          _showExample(redTask[index].example);
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
          itemCount: redTask.length
      ),
    );
  }
}
