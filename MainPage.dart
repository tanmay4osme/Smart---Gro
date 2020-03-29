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
                title: Text('Gardening App Home Page'),
                backgroundColor: Colors.purpleAccent,
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
                    Text('Click button to move to SubPage'),
                    RaisedButton(
                      textColor: Colors.black,
                      color: Colors.green[200],
                      child: Text('Getting Started'),
                      onPressed: () {
                        navigateToinfo(context);
                      },
                    ),
                    RaisedButton(
                        textColor: Colors.black,
                        color: Colors.green[200],
                        child: Text('Plants!'),
                        onPressed: () {
                          navigateToplants(context);
                        }),
                    RaisedButton(
                        textColor: Colors.black,
                        color: Colors.green[200],
                        child: Text('Connect to Google'),
                        onPressed: () {
                          navigateTosettings(context);
                        }),
                    RaisedButton(
                        textColor: Colors.black,
                        color: Colors.green[200],
                        child: Text('Settings'),
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
