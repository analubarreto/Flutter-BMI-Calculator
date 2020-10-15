import 'package:bmi_calulator/screens/constants/styleConstants.dart';
import 'card/constants/cardStyles.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({ this.onTap, this.buttonTitle });

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          )
        ),
      ),
    );
  }
}