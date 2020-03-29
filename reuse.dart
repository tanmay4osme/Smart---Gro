import 'package:flutter/material.dart';
import 'info.dart';

class Reuse extends StatelessWidget{
  @override
  final String tips = '\t• toilet paper tubes can be '
      'reused to store small plants, or as biodegradable '
      'planters for bigger ones\n\t• use corks from wine'
      ' bottles on skewers to label your plants\n\t• '
      'create your own irrigation system using plastic'
      ' waterbottles'
  ;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reusing Materials'),
        backgroundColor: Colors.brown,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image/Plant2.PNG"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('There are plenty of materials we use '
                'in our daily lives that could be repurposed '
                'for gardening instead of being thrown in '
                'the trash.  \n\n',textAlign: TextAlign.justify,
            style: TextStyle(
                color: Colors.brown[800],
                fontWeight: FontWeight.bold,
                fontSize: 25.0)),
          Text(tips,
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Colors.brown[800],
                fontWeight: FontWeight.bold,
                fontSize: 24.0)),
          ],
        ),
      ),
    );
  }
}
