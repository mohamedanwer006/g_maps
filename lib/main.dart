import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Map()));
      }),
      body: Center(
        child: Text(
          'maps'
        ),
      )
    );
  }
}



class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
    GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SafeArea(
            child: GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(31.037933, 31.381523),
              zoom: 13
              ),
            mapType: MapType.normal,
            onMapCreated: (GoogleMapController controller) {
              mapController = controller;
            },
        ),
          ),
    );
  }
}
