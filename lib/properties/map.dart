import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapContainer extends StatefulWidget {
  @override
  _MapContainerState createState() => _MapContainerState();
}

class _MapContainerState extends State<MapContainer> {
  late GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: (controller) {
        setState(() {
          mapController = controller;
        });
      },
      initialCameraPosition: CameraPosition(
        target: LatLng(37.7749, -122.4194),
        zoom: 12.0,
      ),
    );
  }
}

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map Inside Container'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: 300.0,
        child: MapContainer(),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MapScreen(),
  ));
}
