import 'package:bmi_calulator/card/cardIcon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../card/ReusableCard.dart';

const bottomContainerHeight = 80.0;
const cardBgColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

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
                ReusableCard(
                  bgColor: cardBgColor,
                  cardChild: CardIcon(
                    iconImg: FontAwesomeIcons.mars,
                    iconText: 'MALE'
                  ),
                ),
                ReusableCard(
                  bgColor: cardBgColor,
                  cardChild: CardIcon(
                    iconImg: FontAwesomeIcons.venus,
                    iconText: 'FEMALE'
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row (
              children: <Widget>[
                ReusableCard(bgColor: cardBgColor),
              ],
            ),
          ),
          Expanded(
            child: Row (
              children: <Widget>[
                ReusableCard(bgColor: cardBgColor),
                ReusableCard(bgColor: cardBgColor),
              ],
            )
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}