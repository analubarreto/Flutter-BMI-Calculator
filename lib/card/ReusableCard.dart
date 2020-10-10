import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  ReusableCard({ this.bgColor, this.cardChild });

  final Color bgColor;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container (
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10.0)
        ),
      ),
    );
  }
}