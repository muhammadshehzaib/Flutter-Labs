// import 'dart:math';
// import 'package:flutter/material.dart';

// void main() {
//   return runApp(
//     MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.blue,
//         body: DicePage(),
//       ),
//     ),
//   );
// }

// class DicePage extends StatefulWidget {
//   @override
//   _DicePageState createState() => _DicePageState();
// }

// class _DicePageState extends State<DicePage> {
//   int dice_number = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: [
//           Expanded(
//             child: TextButton(
//               onPressed: () {
//                 randomGenerator();
//               },
//               child: Image.asset('assets/dice$dice_number.png'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   randomGenerator() {
//     setState(() {
//       dice_number = Random().nextInt(6) + 1;
//     });
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Q2',
//       home: const colorSection(),
//     );
//   }
// }

// class colorSection extends StatefulWidget {
//   const colorSection({Key? key}) : super(key: key);

//   @override
//   State<colorSection> createState() => _colorSectionState();
// }

// class _colorSectionState extends State<colorSection> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Expanded(
//               flex: 1,
//               child: Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.blue,
//               ),
//             ),
//             Expanded(
//               flex: 2,
//               child: Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.yellow,
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.blue,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
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
      title: 'Enabbled Question',
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Enabled"),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Enabled"),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.volume_up),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
