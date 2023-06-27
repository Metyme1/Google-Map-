import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map/locationPage.dart';
import 'package:map/Map_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MapPage(),
      // routes: {
      //   '/location': (context) => LocationPage(
      //     location: ModalRoute.of(context)?.settings.arguments as LatLng,
      //   ),
      // },
    );
  }
}