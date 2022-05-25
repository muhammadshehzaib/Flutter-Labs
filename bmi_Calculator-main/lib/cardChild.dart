import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

const double iconSize = 90.0;
const sizedBoxHeight = 15.0;

class CardChild extends StatelessWidget {
  IconData? icon;
  String label;

  CardChild({Key? key, @required this.icon, this.label = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconSize,
        ),
        const SizedBox(height: sizedBoxHeight),
        Text(
          label,
          style: colorLabelTextStyle,
        ),
      ],
    );
  }
}
