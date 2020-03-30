import 'package:flutter/material.dart';
import 'package:csv/csv.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class TableLayout1 extends StatefulWidget {
  @override
  MyPlants createState() => MyPlants();
}

class MyPlants extends State<TableLayout1> {
  List<List<dynamic>> data = [];
  List<List<String>> userPlants = new List<List<String>>();
  List<String> descriptions = new List<String>();

  MyPlants({List user}) {
    userPlants.add(user);
  }
  loadAsset() async {
    final myData = await rootBundle.loadString('assets/plantInfo-clean.csv');
    print(myData);
    List<List<dynamic>> csvTable = CsvToListConverter().convert(myData);
    data = csvTable;
  }

  @override
  Widget build(BuildContext context) {
    loadAsset();
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Tutorial - TutorialKart'),
        ),
        body: ListView(
          children: <Widget>[
            Center(
                child: Text(
              'Students',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
            DataTable(
              columns: [
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('AlternateName')),
                DataColumn(label: Text('sowinstructions')),
                DataColumn(label: Text('spaceinstructions')),
                DataColumn(label: Text('harvestinstructions')),
                DataColumn(label: Text('compatibleplants')),
                DataColumn(label: Text('avoidinstructions')),
                DataColumn(label: Text('culinaryhints')),
                DataColumn(label: Text('culinarypreservation')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('Arya')),
                  DataCell(Text('6')),
                ]),
                DataRow(cells: [
                  DataCell(Text('12')),
                  DataCell(Text('John')),
                  DataCell(Text('9')),
                ]),
                DataRow(cells: [
                  DataCell(Text('42')),
                  DataCell(Text('Tony')),
                  DataCell(Text('8')),
                ]),
              ],
            ),
          ],
        ));
  }
}

void backToMainPage(context) {
  Navigator.pop(context);
}
