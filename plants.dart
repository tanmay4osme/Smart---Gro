import 'package:flutter/material.dart';
import 'package:csv/csv.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'myPlants.dart';

class TableLayout extends StatefulWidget {
  @override
  _TableLayoutState createState() => _TableLayoutState();
}

class _TableLayoutState extends State<TableLayout> {
  List<List<dynamic>> data = [];
  List<String> plantNames = new List<String>();
  List<String> descriptions;
  final List<int> colorCodes = List<int>();
  List<String> userPlants = new List<String>();
  loadAsset() async {
    final myData = await rootBundle.loadString('assets/plantInfo-clean.csv');
    print(myData);
    List<List<dynamic>> csvTable = CsvToListConverter().convert(myData);
    data = csvTable;
    for (var i = 1; i < data.length; i++) {
      plantNames.add(data[i].first);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.refresh),
            onPressed: () async {
              await loadAsset();
              print(plantNames);
            }),
        appBar: AppBar(
          title: Text("Plants!"),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: plantNames.length,
          itemBuilder: (BuildContext context, int index) {
            return new GestureDetector(
              onDoubleTap: () {
                print(plantNames[index]);
                userPlants.add(plantNames[index]);
                print(userPlants);
              },
              child: Container(
                height: 50,
                color: Colors.blueAccent,
                child: Center(child: Text('${plantNames[index]}')),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        )
    );
  }
}
void backToMainPage(context) {
  Navigator.pop(context);
}
