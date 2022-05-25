// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//       home: Scaffold(
//           backgroundColor: Colors.blueGrey,
//           appBar: AppBar(
//             backgroundColor: Colors.brown,
//             title: Text("Mobile App Dev lab"),
//           ),
//           body: Center(
//             child: Text("You have pushed the button 0 times"),
//           ),
//           floatingActionButton: FloatingActionButton(
//             tooltip: 'This button is not functional',
//             child: const Icon(Icons.add),
//           ))));
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.lightGreen,
    appBar: AppBar(
      backgroundColor: Colors.red,
      title: Text("I Am Rick"),
    ),
    body: Center(
      child: Center(child: Image.asset('images/iamrick.jpeg')),
    ),
  )));
}
