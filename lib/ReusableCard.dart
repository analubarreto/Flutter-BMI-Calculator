import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReusableCard extends StatelessWidget {

  Color bgColor;
  ReusableCard({ @required this.bgColor });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container (
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10.0)
        ),
      ),
    );
  }
}