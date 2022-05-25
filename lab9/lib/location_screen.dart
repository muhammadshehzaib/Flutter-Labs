import 'dart:convert';

import "package:flutter/material.dart";

class location_screen extends StatefulWidget {
  dynamic locationData;
  location_screen(this.locationData);
  @override
  State<location_screen> createState() => _location_screenState();
}

class _location_screenState extends State<location_screen> {
  var temperature;
  var cityName;
  @override
  void initState() {
    update();
    super.initState();
  }

  void update() async {
    var weatherdata = await jsonDecode(widget.locationData);
    temperature = weatherdata['main']['temp'];
    cityName = weatherdata["name"];

    print("This is my data " + weatherdata);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Location Screen"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 50),
              Text(cityName.toString()),
              const SizedBox(height: 50),
              Text(temperature.toString()),
              const SizedBox(height: 50),
              const Icon(Icons.sunny),
              const SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      update();
                    });
                  },
                  child: Text("Click To Get Data")),
            ],
          ),
        ));
  }
}
