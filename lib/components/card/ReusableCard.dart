import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  ReusableCard({ this.bgColor, this.cardChild, this.onPress });

  final Color bgColor;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: GestureDetector(
          onTap: onPress,
          child: Container (
          child: cardChild,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(10.0)
          ),
        ),
      ),
    );
  }
}