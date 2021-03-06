import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Connect extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<Connect> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(45.521563, -122.677433);
  MapType _currentMapType = MapType.normal;

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sub Page 4'),
        backgroundColor: Colors.green[200],
      ),
      body: Stack(
        children: <Widget>[
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(target: _center, zoom: 11.0),
            mapType: _currentMapType,
          ),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                  alignment: Alignment.topRight,
                  child: FloatingActionButton(
                    onPressed: () => print('button pressed'),
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                    backgroundColor: Colors.green[200],
                    child: const Icon(Icons.map, size: 36.0),
                  )
              )

          ),
          RaisedButton(
            textColor: Colors.black,
            color: Colors.green[200],
            child: Text('Back to mainpage'),
            onPressed: () {
              backToMainPage(context);
            },
          ),
        ],
      ),

    );


  }
}

void backToMainPage(context) {
  Navigator.pop(context);

}
