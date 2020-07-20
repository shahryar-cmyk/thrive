import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hangup/model/cognitive/cognitive.dart';

import 'Endurance_pages/EnduranceCongnitive.dart';
import 'Endurance_pages/EnduranceIntensity.dart';


class Enduarance extends StatefulWidget {
  @override
  _EnduaranceState createState() => _EnduaranceState();
}

class _EnduaranceState extends State<Enduarance> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            ('Endurance'),
            style: GoogleFonts.mcLaren(),
          ),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Endurance Intensity',
              ),
              Tab(text: 'Endurance Cognitive'),
         
            ],
          
          ),
        ),
          body: TabBarView(
          children: <Widget>[
            EnduranceIntensity(),
            Cognitive(),
          ],
        ),
        
      ),
      
    );
  }
}
