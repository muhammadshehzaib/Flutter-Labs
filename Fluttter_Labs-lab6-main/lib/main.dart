import 'package:flutter/material.dart';
import 'Quiz.dart';
// ignore: implementation_imports

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Theme(
        data: ThemeData(
          splashColor: Colors.red,
        ),
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 206, 175, 175),
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Quizzler',
                style: TextStyle(
                    fontFamily: 'Pacifico', fontSize: 30, color: Colors.white)),
            backgroundColor: Colors.blue.shade900,
          ),
          body: SafeArea(
            child: MyQuiz(),
          ),
        ),
      ),
    );
  }
}

class MyQuiz extends StatefulWidget {
  @override
  _MyQuizState createState() => _MyQuizState();
}

class _MyQuizState extends State<MyQuiz> {
  Quiz obj = Quiz();
  List<Widget> scorkeeper = [];

  void compareAnswer(bool answer) {
    bool corretAnswer = obj.CorrectAnswer();
    if (obj.finished() == true) {
      obj.reset();
      scorkeeper = [];
    } else {
      if (corretAnswer == answer) {
        scorkeeper.add(
          Icon(Icons.check, color: Colors.green),
        );
      } else {
        scorkeeper.add(
          Icon(Icons.close, color: Colors.red),
        );
      }
      setState(() {
        obj.nextQuestions();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 6,
            child: Center(
              child: Text(
                obj.GetQuestions(),
                style: TextStyle(fontSize: 30.0, color: Colors.black),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                shape: StadiumBorder(),
                onPressed: () {
                  compareAnswer(true);
                },
                child: const Text(
                  'TRUE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                color: Colors.blue.shade900,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: FlatButton(
                shape: const StadiumBorder(),
                color: Colors.blue.shade900,
                onPressed: () {
                  compareAnswer(false);
                },
                child: const Text(
                  'False',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: scorkeeper,
          )
        ],
      ),
    );
  }
}
