import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AudioCache audiocache = AudioCache();
    return Scaffold(
        body: Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          rows_color(audiocache, 1, Colors.yellow),
          rows_color(audiocache, 2, Colors.black),
          rows_color(audiocache, 3, Colors.purple),
          rows_color(audiocache, 4, Colors.cyan),
          rows_color(audiocache, 5, Colors.orange),
          rows_color(audiocache, 6, Colors.red),
          rows_color(audiocache, 7, Colors.lightGreen),
        ],
      ),
    ));
  }

  Expanded rows_color(AudioCache audiocache, i, mycolor) {
    return Expanded(
      child: FlatButton(
        child: Text(""),
        color: mycolor,
        onPressed: () {
          audiocache.play('note$i.wav');
        },
      ),
    );
  }
}

// Question 1 starts here

// import "package:flutter/material.dart";
// import 'dart:math';

// void main() {
//   runApp(BallPage());
// }

// class BallPage extends StatefulWidget {
//   @override
//   _BallPageState createState() => _BallPageState();
// }

// class _BallPageState extends State<BallPage> {
//   @override
//   Widget build(BuildContext context) {
//     Random random = Random();
//     int number = random.nextInt(5) + 1;
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Ask Me Anything"),
//           backgroundColor: const Color.fromARGB(235, 0, 4, 255),
//         ),
//         body: Container(
//             child: FlatButton(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               Expanded(
//                 child: Image.asset("images/ball1.png"),
//               ),
//             ],
//           ),
//           onPressed: () {
//             print("I got clicked");
//             print("$number");
//           },
//         )),
//       ),
//       theme:
//           ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 46, 130, 240)),
//     );
//   }
// }
