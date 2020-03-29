import 'package:flutter/material.dart';
import 'MainPage.dart';
class MyPlants extends StatelessWidget {
  List<String> userPlants = new List<String>();
  MyPlants(String user) {
    userPlants.add(user);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Plants'),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Center(

        )
    );
  }
}

void backToMainPage(context) {
  Navigator.pop(context);
}
