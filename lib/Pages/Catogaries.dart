import 'package:flutter/material.dart';
import '../model/TabviewPages/coordination.dart';
import '../model/TabviewPages/endurance.dart';
import '../model/catogaries.dart';
import 'package:google_fonts/google_fonts.dart';

class FirtScreen extends StatefulWidget {
  @override
  _FirtScreenState createState() => _FirtScreenState();
}

class _FirtScreenState extends State<FirtScreen> {
  @override
  Widget build(BuildContext context) {
    Future<bool> _onBackPressed() {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(
                "Are you sure?",
                style: GoogleFonts.mcLaren(),
              ),
              content: Text(
                "You are going to exit the application!!",
                style: GoogleFonts.mcLaren(),
              ),
              actions: <Widget>[
                FlatButton(
                  child: Text("No"),
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                ),
                FlatButton(
                  child: Text("Yes"),
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                )
              ],
            );
          });
    }

    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'THRIVE',
          style: GoogleFonts.mcLaren(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 25,
          ),
        )),
        backgroundColor: Colors.blue[800],
      ),
      body: WillPopScope(
        onWillPop: _onBackPressed,
        child: Column(
          children: [
            // Image.asset('assets/images/1.jpg'),
            SizedBox(
              height: 40,
            ),
            InkWell(
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                width: 450,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/1.jpg"),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                  child: Text(
                    "ENDURANCE",
                    style: GoogleFonts.mcLaren(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Enduarance()));
              },
            ),
            SizedBox(
              height: 90,
            ),
            InkWell(
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                width: 450,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/2.png"),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                  child: Text(
                    "COORDINATION",
                    style: GoogleFonts.mcLaren(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CoordinationPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
