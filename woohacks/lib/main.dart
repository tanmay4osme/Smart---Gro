
import 'package:flutter/material.dart';
import 'info.dart';
import 'plants.dart';
import 'settings.dart';
import 'connect.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
void main() => runApp(App());

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Gardening App Home Page'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Click button to move to SubPage'),
            RaisedButton(
              textColor: Colors.black,
              color: Colors.green[200],
              child: Text('Go to SubPage 1/Info/Getting Started'),
              onPressed: () {
                navigateToinfo(context);
              },
            ),
            RaisedButton(
                textColor: Colors.black,
                color: Colors.green[200],
                child: Text('Go to SubPage 2/Plants'),
                onPressed: () {
                  navigateToplants(context);
                }
            ),
            RaisedButton(
                textColor: Colors.black,
                color: Colors.green[200],
                child: Text('Go to SubPage 3/Connect'),
                onPressed: () {
                  navigateTosettings(context);
                }
            ),
            RaisedButton(
                textColor: Colors.black,
                color: Colors.green[200],
                child: Text('Go to Sub Page 4/Settings'),
                onPressed: () {
                  navigateToconnect(context);
                }
            )
          ],
        ),
      ),
    );
  }

  Future navigateToinfo(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => info()));
  }
  Future navigateToplants(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => plants()));
  }
  Future navigateTosettings(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => settings()));
  }
  Future navigateToconnect(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Connect()));
  }
}