import 'package:flutter/material.dart';

import 'ReusableCard.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calulator'),
      ),
      body: Column (
        children: <Widget> [
          Expanded(
            child: Row (
              children: <Widget>[
                ReusableCard(bgColor: Color(0xFF1D1E33)),
              ],
            ),
          ),
          Expanded(
            child: Row (
              children: <Widget>[
                ReusableCard(bgColor: Color(0xFF1D1E33)),
                ReusableCard(bgColor: Color(0xFF1D1E33)),
              ],
            ),
          ),
          Expanded(
            child: Row (
              children: <Widget>[
                ReusableCard(bgColor: Color(0xFF1D1E33)),
              ],
            )
          ),
      ],)
    );
  }
}