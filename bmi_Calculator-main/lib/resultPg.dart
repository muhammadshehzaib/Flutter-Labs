import 'buttombtn.dart';
import 'constants.dart';
import 'reuseablecard.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  //const ResultPage({ Key? key }) : super(key: key);
  ResultPage(this.resultText, this.interpretation, this.bmiResult, {Key? key})
      : super(key: key);
  String resultText;
  String interpretation;
  String bmiResult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        backgroundColor: const Color(0xFF0A0E21),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "YOUR RESULT",
            style: TextStyle(fontSize: 50, color: Colors.white),
          ),
          Expanded(
              child: ReusableCard(
            colour: colorActiveColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  resultText.toUpperCase(),
                  style: const TextStyle(color: Colors.green, fontSize: 16),
                ),
                Text(
                  bmiResult,
                  style: const TextStyle(fontSize: 36),
                ),
                Text(interpretation, style: const TextStyle(fontSize: 16)),
              ],
            ),
          )),
          GestureDetector(
            onTap: (() {
              Navigator.pop(context);
            }),
            child: const BottomButton(
              text: 'RECALCULATE YOUR BMI',
            ),
          )
        ],
      ),
    );
  }
}
