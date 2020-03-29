import 'package:flutter/material.dart';
import 'info.dart';
class Fertilizers extends StatelessWidget {
  @override
  final String tips = '\t• avoid using citrus peels since they '
      'could affect the pH of the soil\n\t• don\'t use pet waste'
      '\n\t• dryer lint and eggshells can be used as compost'
      ' materials\n\t• do not compost perennial weeds such as '
      'dandelions\n\t• if possible, use worms; they help speed '
      'up the decomposition process and eliminate the need to '
      'mix your compost';
  final String compostingInstructions = '\t1. Get a plastic bin '
      'at least two feet tall and with a tight-fitting lid\n'
      '\t2. Drill about nine holes into the bottom for air flow\n'
      '\t3. Fill 1/8 to 1/4 of the bin with dry leaves or shredded'
      'newspaper\n\t4. Add dirt until the container is half full, '
      'then add your compostable food and paper scraps\n\t5. Stir'
      'the compost so that the waste is covered with dirt\n\t6. Spray'
      ' water to moisten your compound, but don\'t soak it\n\t7. '
      'Drill about nine holes on the container lid, and place in '
      'a good location outside\n\t8. Wait until the compost is ready.'
      ' It will look and smell like normal soil and will not have '
      'any chunks. ';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sustainable Fertilizer!'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Synthetic fertilizers often produce '
                'polluted runoff water. Creating your own'
                'fertilizers through composting is easy, cost-'
                'effective, and helps to reduce food waste. Here '
                'are some quick tips on composting: \n', textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.brown[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            Text(tips, textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.brown[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0),
            ),
            Text('\n\nHere\'s how you can make your own compost bin for '
                'less than \$10\n', textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.brown[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            Text(compostingInstructions, textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.brown[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0),
            ),
          ],
        ),
      ),
    );
  }
}
