import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationPage extends StatelessWidget {
  // Declare a variable to hold the LatLng object
  final LatLng location;

  // Initialize the variable in the constructor
  const LocationPage({required this.location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Page'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: location,
          zoom: 15.0,
        ),
        mapType: MapType.normal,
        markers: {
          Marker(
            markerId: MarkerId('selected-location'),
            position: location,
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
          )
        },
      ),
    );
  }
}