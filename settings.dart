import 'package:flutter/material.dart';

class settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sub Page 3'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Settings'),
            Text('Privacy Policy: This page is used to inform visitors regarding our policies '
                'with the collection, use, and disclosure of Personal Information if anyone decided to'
                ' use our Service. If you choose to use our Service, then you agree to the collection '
                'and use of information in relation to this policy. The Personal Information that [I/We] collect '
                'is used for providing and improving the Service. We will not use or share your information with '
                'anyone except as described in this Privacy Policy.'),
            RaisedButton(
              textColor: Colors.black,
              color: Colors.green[200],
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

  void backToMainPage(context) {
    Navigator.pop(context);
  }
}
