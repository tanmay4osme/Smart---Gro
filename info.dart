import 'package:flutter/material.dart';
import 'main.dart';
import 'insecticides.dart';
import 'fertilizers.dart';

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
      '     Avoid synthetic fertilizers from the store and make your'
      ' own using food scraps and raked leaves. Mature compost can '
      'even be used as mulch! Work with nature to attract insects that '
      'encourage plant growth '
//• <--- for bullet points
      ;

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
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
            Text('Why Sustainability Matters!\n',
              style: TextStyle(
                  color: Colors.brown[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 21.0),
            ),
            Text(sustainabilityMatters, textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.brown[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 13.0),
            ),
            Text(beingSustainable, textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.brown[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 13.0),
            ),
            RaisedButton(
              textColor: Colors.black,
              color: Colors.green[200],
              child: Text("Learn more about insecticides",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              onPressed: () {
                navigateToInsecticides(context);
              },
            ),
            RaisedButton(
              textColor: Colors.black,
              color: Colors.green[200],
              child: Text("Learn more about fertilizers",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              onPressed: () {
                navigateToFertilizers(context);
              },
            ),
            RaisedButton(
              textColor: Colors.black,
              color: Colors.green[200],
              child: Text("Back to Main Page",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
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
}
void backToMainPage(context) {
  Navigator.pop(context);
}
