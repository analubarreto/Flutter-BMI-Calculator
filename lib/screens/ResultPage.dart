import 'package:bmi_calulator/card/constants/cardStyles.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results')
      ),
      body: Column (children: <Widget>[
        Text('Hello')
      ],)
    );
  }
}
