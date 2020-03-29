import 'package:flutter/material.dart';
import 'main.dart';
class info extends StatelessWidget {
  @override

  final String welcomeMessage =
      '   Sustainability is often overlooked as a global concern. '
      'However there has been growing concern regarding the well-being '
      'of our environment, and people are now looking for ways to '
      'lower strain on available land and to reduce waste. ' '\n\n'
      '   The United Nations, an organization that sets universal '
      'standards for promoting human health and well-being, has '
      'developed 17 sustainability goals to bring about prosperity '
      'for all populations while protecting the environment. Some of '
      'these goals include: having sustainable cities and communities, '
      'protecting forests by increasing land productivity, and '
      'increasing responsible consumption and production.' '\n\n'
      '   Backyard gardening is a practice related to all these topics. '
      'Communities can be more sustainable through lower transportation '
      'costs associated with moving fruits and vegetables and reduce '
      'waste by fertilizing with food leftovers and grass clippings. '
      'They also decrease the number of trips to the grocery store and '
      'reduce the amount of waste produced by plastic packages or '
      'cardboard boxes.'
    ;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sub Page'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Why Sustainability Matters\n\n'),
            Text(welcomeMessage),
            RaisedButton(
              textColor: Colors.black,
              color: Colors.green[200],
              //textAlign: TextAlign.justify,
              child: Text('Back to Main Page'),
              onPressed: () {
                backToMainPage(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
void backToMainPage(context) {
  Navigator.pop(context);
}
