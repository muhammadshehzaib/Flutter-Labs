// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';

// void main() {
//   runApp(const GeoLocation());
// }

// class GeoLocation extends StatefulWidget {
//   const GeoLocation({Key? key}) : super(key: key);

//   @override
//   State<GeoLocation> createState() => _GeoLocState();
// }

// class _GeoLocState extends State<GeoLocation> {
//   var Latitude, Longitude;
//   void getLocation() async {
//     Position position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.best);

//     String latitude = "${position.latitude}";
//     String longitude = "${position.longitude}";
//     print(latitude);
//     print(longitude);
//     setState(() {
//       Latitude = position.latitude;
//       Longitude = position.longitude;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Color.fromARGB(115, 255, 251, 251),
//         appBar: AppBar(),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               IconButton(
//                   onPressed: () {
//                     getLocation();
//                   },
//                   icon: Icon(Icons.location_on)),
//               Text('Latitude : $Latitude'),
//               Text('Longitude : $Longitude')
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: prefer_const_constructors, avoid_print, non_constant_identifier_names, unused_local_variable, prefer_typing_uninitialized_variables

// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';

// void main() {
//   runApp(GeoLocation());
// }

// class GeoLocation extends StatefulWidget {
//   const GeoLocation({Key? key}) : super(key: key);

//   @override
//   State<GeoLocation> createState() => _GeoLocState();
// }

// class _GeoLocState extends State<GeoLocation> {
//   dynamic PermissionStatus;
//   var Latitude, Longitude;

//   void getLocation() async {
//     Position position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.best);

//     String latitude = "${position.latitude}";
//     String longitude = "${position.longitude}";
//     print(latitude);
//     print(longitude);
//     setState(() {
//       Latitude = position.latitude;
//       Longitude = position.longitude;
//     });
//   }

//   void checklocationStatus() async {
//     LocationPermission Permissions = await Geolocator.checkPermission();
//     if (Permissions == LocationPermission.denied) {
//       setState(() {
//         PermissionStatus = 'Permission Denied';
//       });
//       print("Permission Denied");
//     } else {
//       setState(() {
//         PermissionStatus = 'Permission Allowed';
//       });
//       print("Permission Allowed");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.black45,
//         appBar: AppBar(),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               IconButton(
//                   onPressed: () {
//                     getLocation();
//                   },
//                   icon: Icon(Icons.location_on)),
//               Text('Latitude : $Latitude'),
//               Text('Longitude : $Longitude'),
//               SizedBox(
//                 height: 30,
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     checklocationStatus();
//                   },
//                   child: Text('Permission Status')),
//               SizedBox(
//                 height: 30,
//               ),
//               Text('$PermissionStatus')
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';

// void main() {
//   runApp(GeoLocation());
// }

// class GeoLocation extends StatefulWidget {
//   const GeoLocation({Key? key}) : super(key: key);

//   @override
//   State<GeoLocation> createState() => _GeoLocState();
// }

// class _GeoLocState extends State<GeoLocation> {
//   @override
//   initState() {
//     getLocation();
//     checklocationStatus();
//     super.initState();
//   }

//   dynamic PermissionStatus;
//   var Latitude, Longitude;

//   void getLocation() async {
//     Position position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.best);
//     String latitude = "${position.latitude}";
//     String longitude = "${position.longitude}";
//     print(latitude);
//     print(longitude);
//     setState(() {
//       Latitude = position.latitude;
//       Longitude = position.longitude;
//     });
//   }

//   void checklocationStatus() async {
//     LocationPermission Permissions = await Geolocator.checkPermission();
//     if (Permissions == LocationPermission.denied) {
//       setState(() {
//         PermissionStatus = 'Permission Denied';
//       });
//       print("Permission Denied");
//     } else {
//       setState(() {
//         PermissionStatus = 'Permission Allowed';
//       });
//       print("Permission Allowed");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Color.fromARGB(115, 53, 43, 43),
//         appBar: AppBar(),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               IconButton(
//                   onPressed: () {
//                     getLocation();
//                   },
//                   icon: Icon(Icons.location_on)),
//               SizedBox(
//                 height: 30,
//               ),
//               Text('Latitude : $Latitude'),
//               Text('Longitude : $Longitude'),
//               SizedBox(
//                 height: 30,
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     checklocationStatus();
//                   },
//                   child: Text('Permission Status')),
//               SizedBox(
//                 height: 30,
//               ),
//               Text('$PermissionStatus')
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import "package:lab8/secondscreen.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(115, 235, 221, 221),
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => secondscreen()),
                  );
                },
                child: Text('Go To Second Screen'))
          ],
        ),
      ),
    );
  }
}
