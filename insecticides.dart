import 'package:flutter/material.dart';
import 'info.dart';

class Insecticides extends StatelessWidget {
  @override
  final String tips = '• Use a mix of 2 '
      'teaspoons neem oil and 1 teaspoon of mild '
      'liquid soap shaken thoroughly with 1 quart '
      'of water. Then spray on the affected '
      'parts of the plant. You can also use neem '
      'oil as a preventative measure by spraying'
      'the leaves of commonly infested plants '
      'beforehand. \n• Mix one cup of vegetable '
      'oil and one tablespoon of soap, and mix'
      'vigorously. Then when treating your plants,'
      'add two teaspoons of your oil spray mix to '
      'a quart of water, shake thoroughly, and apply'
      ' to the affected parts of the plant. \n• '
      'Chop two bulbs of garlic, six hot chili '
      'peppers, and one onion. Then blend with two '
      'cups of water and leave overnight in the '
      'fridge. Then filter the mixture through a'
      'cheesecloth and mix the liquid with two '
      'tablespoons of dishwashing soap and two '
      'tablespoons vegetable oil. Transfer the '
      'solution to a spray bottle and spray your '
      'plants and the surrounding area. ';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sustainable Insecticides'),
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
            Text(
              'Avoid the use of chemical insecticides'
              ' to reduce chemical pollution.\nHere are '
              'some more environmentally safe alternatives'
              ' to prevent pests. \n',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.brown[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            Text(
              tips,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.brown[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
