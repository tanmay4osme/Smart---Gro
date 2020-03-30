import 'package:flutter/material.dart';
import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'MyPlants.dart';

class TableLayout extends StatefulWidget {
  @override
  _TableLayoutState createState() => _TableLayoutState();
}

class _TableLayoutState extends State<TableLayout> {
  List<List<dynamic>> data = [];
  List<String> plantNames = new List<String>();
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
    loadAsset();
    MyPlants goop = new MyPlants();
    return Scaffold(
        appBar: AppBar(
          title: Text("Double tap the Plants you want!"),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: plantNames.length,
          itemBuilder: (BuildContext context, int index) {
            return new GestureDetector(
              onDoubleTap: () {
                print(plantNames[index]);
                goop.move(data[index]);
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

