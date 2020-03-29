import 'package:flutter/material.dart';
import 'main.dart';
import 'insecticides.dart';
import 'fertilizers.dart';
import 'reuse.dart';

class info extends StatelessWidget {
  @override

  final String sustainabilityMatters =
      '   Sustainability is often overlooked as a global concern. '
      'However there has been growing concern regarding the well-being '
      'of our environment, and people are now looking for ways to '
      'lower strain on available land and to reduce waste. ' '\n'
      '   The United Nations, an organization that sets universal '
      'standards for promoting human health and well-being, has '
      'developed 17 sustainability goals to bring about prosperity '
      'for all populations while protecting the environment. Some of '
      'these goals include: having sustainable cities and communities, '
      'protecting forests by increasing land productivity, and '
      'increasing responsible consumption and production.' '\n'
      '   Backyard gardening is a practice related to all these topics. '
      'Communities can be more sustainable through lower transportation '
      'costs associated with moving fruits and vegetables and reduce '
      'waste by fertilizing with food leftovers and grass clippings. '
      'They also decrease the number of trips to the grocery store and '
      'reduce the amount of waste produced by plastic packages or '
      'cardboard boxes.' '\n'
    ;

  final String beingSustainable =
    'Make sure you use safe and sustainable practices when gardening. '
    'Avoid synthetic fertilizers from the store and make your'
    ' own using food scraps and raked leaves. \n Mature compost can '
    'even be used as mulch!\nWork with nature to attract insects that'
    'encourage plant growth '
//• <--- for bullet points
  ;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Being Sustainable'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Why Sustainability Matters\n\n'),
            Text(beingSustainable, textAlign: TextAlign.justify),
            RaisedButton(
              textColor: Colors.black,
              color: Colors.green[200],
              child: Text('Learn more about insecticides'),
              onPressed: () {
                navigateToInsecticides(context);
              },
            ),
            RaisedButton(
              textColor: Colors.black,
              color: Colors.green[200],
              child: Text('Learn more about fertilizers'),
              onPressed: () {
                navigateToFertilizers(context);
              },
            ),
            RaisedButton(
              textColor: Colors.black,
              color: Colors.green[200],
              child: Text('Learn more about reusing'),
              onPressed: () {
                navigateToReuse(context);
              },
            ),
            RaisedButton(
              textColor: Colors.black,
              color: Colors.green[200],
              child: Text('Back to Main Page'),
              onPressed: () {
                backToMainPage(context);
              },
            ),
          ],

        ),
      ),
    );
  }
  Future navigateToInsecticides(context) async {
    Navigator.push(context, MaterialPageRoute(builder:
        (context) => Insecticides()));
  }
  Future navigateToFertilizers(context) async {
    Navigator.push(context, MaterialPageRoute(builder:
        (context) => Fertilizers()));
  }
  Future navigateToReuse(context) async {
    Navigator.push(context, MaterialPageRoute(builder:
        (context) => Reuse()));
  }
}
void backToMainPage(context) {
  Navigator.pop(context);
}
