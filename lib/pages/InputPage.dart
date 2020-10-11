import 'package:bmi_calulator/card/CardIcon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../card/ReusableCard.dart';

// Constants
const bottomContainerHeight = 80.0;
const cardBgColor = Color(0xFF1D1E33);
const inactiveCardBgColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

// Enums
enum Gender { male, female }

class InputPage extends StatefulWidget {
  InputPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _InputPageState createState() => _InputPageState();
}
class _InputPageState extends State<InputPage> {
  Gender selectedGender;

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
                  bgColor: selectedGender == Gender.male ? cardBgColor : inactiveCardBgColor,
                  cardChild: CardIcon(
                    iconImg: FontAwesomeIcons.mars,
                    iconText: 'MALE'
                  ),
                  onPress: () => {
                    setState(() => {
                      selectedGender = Gender.male,
                    })
                  },
                ),
                ReusableCard(
                  bgColor: selectedGender == Gender.female ? cardBgColor : inactiveCardBgColor,
                  cardChild: CardIcon(
                    iconImg: FontAwesomeIcons.venus,
                    iconText: 'FEMALE'
                  ),
                  onPress: () => {
                    setState(() => {
                      selectedGender = Gender.female,
                    })
                  },
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