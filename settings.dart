import 'package:flutter/material.dart';

class settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[200],
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
            Text('Settings\n',
          textAlign: TextAlign.justify,
          style: TextStyle(
              color: Colors.brown[800],
              fontWeight: FontWeight.bold,
              fontSize: 30.0),
        ),
            Text('Privacy Policy: This page is used to inform visitors regarding our policies '
                'with the collection, use, and disclosure of Personal Information if anyone decided to'
                ' use our Service. If you choose to use our Service, then you agree to the collection '
                'and use of information in relation to this policy. The Personal Information that [I/We] collect '
                'is used for providing and improving the Service. We will not use or share your information with '
                'anyone except as described in this Privacy Policy.\n',
      textAlign: TextAlign.justify,
      style: TextStyle(
      color: Colors.brown[800],
      fontWeight: FontWeight.bold,
      fontSize: 17.0),
    ),
            Text('Disclaimer: Plants will not be provided by the creators of this application and the growth of illegal plants is neither '
                'advised or endorced. In addition, be careful to ensure that plants are not grown in toxic enviornments and are grown in'
                'a location that belongs to the user.\n',
    textAlign: TextAlign.justify,
    style: TextStyle(
    color: Colors.brown[800],
    fontWeight: FontWeight.bold,
    fontSize: 17.0),
    ),
            RaisedButton(textColor: Colors.black,
                color: Colors.green[200],
                child: Text(
                  "Back To Main Page",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {
                  backToMainPage(context);
                }
            )
          ],
        ),
      ),
    );
  }

  void backToMainPage(context) {
    Navigator.pop(context);
  }
}
