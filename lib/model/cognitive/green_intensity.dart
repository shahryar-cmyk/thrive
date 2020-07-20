import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import './levelset.dart';

import 'package:rflutter_alert/rflutter_alert.dart';
class GreenINTENSITY extends StatefulWidget {
  @override
  _GreenINTENSITYState createState() => _GreenINTENSITYState();
}

class _GreenINTENSITYState extends State<GreenINTENSITY> {
  List greenIntensity = [
    Level(
        name: "Types of Birds",
        example: 'Parrot, Pidgeon, Robin, Cardinal, Blue Jay, Raven, Sparrow, Stork,  Hummingbird, Woodpecker'),
    Level(
        name: 'Things That Have Wings',
        example: "Bird, Airplane, Angel, Restaurant, Bee, Fairy, Moth, Helicopter, Fly, Building"
    ),
    Level(
        name: 'Animals in the Zoo ',
        example: "Giraffe, Tiger, Lion, Elephant, Panda, Monkey, Penguin, Meerkat, Cheetah, Zebra"
    ),
    Level(
        name: "Animals in the Sea",
        example: "Shark, Whales, Seal, Dolphin, Crab, Barracuda, Oyster, Octopus, Sea Turtle, Starfish"
    ),
    Level(
        name: 'Types of Fish',
        example: "Guppy, Salmon, Trout, Perch, Tuna, Goldfish, Bass, Cod, Mackerel, Bluefish"
    ),
    Level(
        name: 'Animals in the Sky',
        example: "Eagle, Bat, Butterfly, Moth, Hawk, Vulture, Seagull, Dove, Mosquitoes,  Crane"
    ),
    Level(
        name: 'Animals in the Desert ',
        example: "Rattlesnake, Coyote, Camel, Vulture, Iguana, Fox, Rabbit, Bobcat, Rat, Prairie Dog"
    ),
    Level(
        name: 'Animals of the Tropics',
        example: "Toucan, Armadillo, Kinkajou, Jaguar, Gorilla, Sloth, Boa Constrictor, Orangutan, Anaconda, Piranha"
    ),
    Level(
        name: 'Animals in a Savanna',
        example: "Zebra, Cheetah, Gazelle, Antelope, Baboon, Wildebeest, Impala, Warthog, Buffalo, Aardvark"
    ),Level(
        name: 'Animals of the Night',
        example: "Bat, Owl, Raccoon, Fox, Wolf, Mouse, Opossum, Lemur,"
    ),
    Level(
        name: 'Pets',
        example: "Dog, Cat, Gerbil, Hamster, Guinea Pig, Snake, Parakeet, Goldfish, Rabbit, Turtle"
    ),
    Level(
        name: 'Books People Have in Their Home',
        example: "Bible, The Da Vinci Code, War and Peace, Think and Grow Rich, Nancy Drew, Fifty Shades, The Twilight Saga, Joy of Cooking, Betty Crocker's Cookbook,"
    ),
    Level(
        name: 'Popular Children’s Book',
        example: "Green Eggs and Ham, Cat in the Hat, Harry Potter, Charlotte's Web, The Tale of Peter Rabbit, Alice's Adventures in Wonderland, Charlie and the Chocolate Factory, The Little Prince, Curious George, Winnie the Pooh"
    ),
    Level(
        name: 'Nursery rhymes',
        example: "Little Bo Peep, Twinkle Twinkle Little Star, Humpty Dumpty, Jack and Jill, Hickory Dickery, Dock, Baa Baa Black Sheep, Itsy Bitsy Spider, Mary had a Little Lamb, Pld MacDonald, Hey Diddle Diddle, Three Blind Mice, Little Miss Muffet, Rock-a-Bye Baby, Five Little Monkeys, The Wheels on the Bus, Ring Around the Rosie, Little Jack Horner, Mary, Mary Quite Contrary,London Bridge is Falling Down, I’m a Little Teapot, This Old Man, This Little Piggy, This Old Man "
    ),
    Level(
        name: 'Gifts for a baby shower',
        example: "Diapers, Onesies, Bottles, Pacifiers, Bassinet, Crib, Stroller, Car Seat, Pack-n-Play, Blankets, Bibs, Sheets, Socks, Booties, Mobile, Books, Baby Bath, Clothes, Boppy Pillow, Diaper Genie, Highchair, Burp Cloths, White Noise Machine, Stuffed Animals"),
    Level(
        name: 'Gifts for a first birthday',
        example: "Ride-on Toy, Books, Slide, Baby Pool, Puzzles, Baby Piano, Push/Pull Toys, Stacking Toys, Play Food, Wooden Blocks, Rocking Horse, Cozy Coupe Car, Tricycle, Miracas, Drum, Play Instruments, Sandbox, Stuffed Animals. Bath Toys, " ),
    Level(
        name: 'Christmas gifts for children',
        example: "Musical Instruments, Science Kit, Model Airplane, Remote Control Car, Bicycle, Swing Set, Trampoline, Barbies, Play Kitchen, Play Food, Hot Wheels, American Girl Doll, Crayons, Markers, Puzzles, Dolls, Video Games, Board Games, Action Figures, Baseball/Bat, Basketball/ Hoop, Soccer Net/Ball, Tennis Racquet, Scooter, Pogo Stick, Sneakers"),
    Level(
        name: 'Jobs kids do for money',
        example: "Mow the Lawn, Laundry, Mop the Floor, Take out the Garbage, Clean Room , Lemonade Stand, Deliver Newspaper, Shovel Driveways, Dog Sit, Dog Walking, " ),
    Level(
        name: 'Snack food for children',
        example: "Pretzels, Fruit, Veggies, Goldfish, Fruit Snack, Fruit Leather, Gogurt, Apple Sauce,  Animal Crackers, Cheerios, Popcorn, Veggie Straws, Chocolate Milk, Juice, Cheese/Crackers, Graham Crackers, Peanut Butter, Trail Mix"),
    Level(
        name: 'Card games',
        example: "Solitaire, spider solitaire, high-low jack., no- lmit hold-em, gin rummy, uno, apples to apples, poker, cribbage, water, streams, rocks" ),
    Level(
        name: 'Things you see at the beach',
        example:"Sand, water, umbrella, bathing suits, seagulls, waves, sandcastles, picnics, crabs, fish,Trees, playground, families, picnics, squirrels, rangers, rocks, scenery, picnic table, hiking trails"),
    Level(
        name: 'Items needed for Hiking',
        example:"Boots, socks, water bottle, backpack, hat, sunscreen, bug spray, hiking shorts, sunglasses, snacks" ),
    Level(
        name: 'Things you see during the Summer Olympics',
        example: "Shot put, basketball, swimming, gymnastics,archery, marathon, hurdling, decathlon, volleyball, water polo, equestrian, wrestling" ),
    Level(
        name: 'Things you see during the Winter Olympics ',
        example:"Skiing, hockey, figure skating, speed skating, biathlon, ice dancing, curling, ski jump, cross country skiing, luge, bobsled, skeleton" ),
    Level(
        name: 'Items you see at a sports event',
        example: "Fans, scoreboards, teams, popcorn, beer, soda, officials, mascots, pretzels, hot dogs, tickets"),
    Level(
        name: 'Modes of transportation',
        example: "Plane, train, car, truck, bus, taxi, boat, tractor, motorcycle, bicycle, unicycle"),


  ];
  @override
  var random;
  List greenTask=[];
  void initState() {
    // TODO: implement initState
    super.initState();
    random = (greenIntensity.toList()..shuffle()).first;

    greenTask.add(Level(
        name: random.name,
        example: random.example
    ));
  }
  addGreenTask(){
    random = (greenIntensity.toList()..shuffle()).first;
    setState(() {
      greenTask.add(Level(
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
          color: Color.fromRGBO(0, 179, 134, 1.0),
          radius: BorderRadius.circular(0.0),
        ),
      ],
    ).show();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              'Green Intensity',
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
                Text("Activity",style: GoogleFonts.mcLaren(color: Theme.of(context).primaryColor,fontSize: 20,fontWeight: FontWeight.bold),),
               Padding(
                 padding: const EdgeInsets.all(10),
                 child:  Row(
                   children: <Widget>[
                     Flexible(child: Text("$i) "+greenTask[index].name,style: GoogleFonts.mcLaren(color:Colors.green,fontWeight: FontWeight.bold,fontSize: 20),))
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
                     _showExample(greenTask[index].example);
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
          itemCount: greenTask.length
      )

    );
  }
}
