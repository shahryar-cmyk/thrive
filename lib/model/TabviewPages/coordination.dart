import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hangup/model/cognitive/cognitive.dart';
import '../../model/TabviewPages/Coordination_pages/coordinationCongnitve.dart';
import '../../model/TabviewPages/Coordination_pages/coordinationintensity.dart';

class CoordinationPage extends StatefulWidget {
  @override
  _CoordinationPageState createState() => _CoordinationPageState();
}

class _CoordinationPageState extends State<CoordinationPage> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            ('Coordination'),
            style: GoogleFonts.mcLaren(),
          ),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Coordination Intensity',
              ),
              Tab(text: 'Coordination Cognitive'),
         
            ],
          
          ),
        ),
          body: TabBarView(
          children: <Widget>[
           CoordinationIntensity(),
            Cognitive(),
          ],
        ),
        
      ),
      
    );
  }
}