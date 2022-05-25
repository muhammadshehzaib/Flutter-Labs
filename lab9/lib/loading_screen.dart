import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import "location_screen.dart";
import 'package:flutter_spinkit/flutter_spinkit.dart';

class GeoLocation extends StatefulWidget {
  const GeoLocation({Key? key}) : super(key: key);

  @override
  State<GeoLocation> createState() => _GeoLocState();
}

class _GeoLocState extends State<GeoLocation> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    try {
      String latitude = "${position.latitude}";
      String longitude = "${position.longitude}";
      const apiKey = 'ff56fce19b65a3c31f67753e28e7c367';
      var url = Uri.parse(
          'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');
      http.Response response = await http.get(url);
      dynamic jsonResponse = (response.body);
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return location_screen(jsonResponse);
      }));
    } catch (e) {
      print("Error is in going to the next page");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(115, 255, 251, 251),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 251, 251),
          title: const Text(
            "Loading Screen",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0)),
          ),
        ),
        body: const Center(
          child: SpinKitFadingCube(
            color: Colors.blue,
            size: 50.0,
          ),
        ),
      ),
    );
  }
}
