import 'dart:async';
import 'package:flutter/material.dart';
import 'info.dart';
import 'plants.dart';
import 'settings.dart';
import 'connect.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/Plant.jpg"),
                    fit: BoxFit.cover)),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.green[200],
                leading: IconButton(
                    icon: Icon(
                      Icons.list,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Plant-Eco",
                      style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.bold,
                          fontSize: 70.0),
                    ),
                    RaisedButton(
                      textColor: Colors.black,
                      color: Colors.green[200],
                      highlightElevation: 2,
                      child: Text(
                        "Getting Started",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      onPressed: () {
                        navigateToinfo(context);
                      },
                    ),
                    RaisedButton(
                        textColor: Colors.black,
                        color: Colors.green[200],
                        child: Text(
                          "Plants!",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                        ),
                        onPressed: () {
                          navigateToplants(context);
                        }),
                    RaisedButton(
                        textColor: Colors.black,
                        color: Colors.green[200],
                        child: Text(
                          "Connect to Google",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                        ),
                        onPressed: () {
                          navigateTosettings(context);
                        }),
                    RaisedButton(
                        textColor: Colors.black,
                        color: Colors.green[200],
                        child: Text(
                          "Settings",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                        ),
                        onPressed: () {
                          navigateToconnect(context);
                        })
                  ],
                ),
              ),
            )));
  }

  Future navigateToinfo(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => info()));
  }

  Future navigateToplants(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TableLayout()));
  }

  Future navigateTosettings(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => settings()));
  }

  Future navigateToconnect(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => connect()));
  }
}
