import 'package:flutter/material.dart';
import './constants/cardStyles.dart';

class CardIcon extends StatelessWidget {
  CardIcon({ this.iconImg, this.iconText });

  final IconData iconImg;
  final String iconText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconImg,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(iconText, style: kLabelTextStyle),
      ],
    );
  }
}