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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('There are plenty of materials we use '
                'in our daily lives that could be repurposed '
                'for gardening instead of being thrown in '
                'the trash.  \n\n'),
            Text(tips, textAlign: TextAlign.justify),
          ],
        ),
      ),
    );
  }
}

