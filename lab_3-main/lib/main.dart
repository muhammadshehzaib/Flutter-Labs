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
//             onPressed: null,
//             tooltip: 'This button is not functional',
//             child: const Icon(Icons.add),
//           ))));
// }

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.red,
          ),
          Text(
            "Shehzaib",
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Card(
            margin: EdgeInsets.all(15),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("+923059540083"),
                ),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.all(15),
            child: Column(children: [
              ListTile(
                leading: Icon(Icons.email),
                title: Text('shehzaib@gmail.com'),
              )
            ]),
          )
        ]),
      ),
    );
  }
}
