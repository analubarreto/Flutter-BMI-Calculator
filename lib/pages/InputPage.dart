import 'package:bmi_calulator/card/CardIcon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../card/ReusableCard.dart';
import '../card/constants/cardStyles.dart';

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
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calulator'),
      ),
      body: Column (
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
          Expanded(
            child: Row (
              children: <Widget>[
                ReusableCard(
                  bgColor: selectedGender == Gender.male ? kCardBgColor : kInactiveCardBgColor,
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
                  bgColor: selectedGender == Gender.female ? kCardBgColor : kInactiveCardBgColor,
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
                ReusableCard(
                  bgColor: kCardBgColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('HEIGHT', style: kLabelTextStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Text(
                          height.toString(), 
                          style: kNumberStyle
                          ),
                          Text(
                            'cm',
                            style: kLabelTextStyle,
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        overlayColor: Color(0x29EB1555),
                        thumbColor: kSliderActive,
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 25.0),
                        ),

                        child: Slider(
                        value: height.toDouble(),
                        min: 100.0,
                        max: 220.0,
                        inactiveColor: kSliderInactive,
                        onChanged: (double val) => {
                          setState(() => {
                            height = val.round()
                          })
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row (
              children: <Widget>[
                ReusableCard(bgColor: kCardBgColor),
                ReusableCard(bgColor: kCardBgColor),
              ],
            )
          ),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      ),
    );
  }
}