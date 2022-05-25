import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 189, 47, 94),
          borderRadius: BorderRadius.circular(10)),
      height: 40,
      width: double.infinity,
      child: Center(child: Text('$text')),
    );
  }
}
