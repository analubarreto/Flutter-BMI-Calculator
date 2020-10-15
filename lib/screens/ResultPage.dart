import 'package:bmi_calulator/components/ButtonButton.dart';
import 'package:bmi_calulator/components/card/ReusableCard.dart';
import 'package:bmi_calulator/components/card/constants/cardStyles.dart';
import 'package:flutter/material.dart';
import './constants/styleConstants.dart';
import '../components/card/constants/cardStyles.dart';
import '../components/card/ReusableCard.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results')
      ),
      body: Column (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text(
              'Your Result',
              style: kTitleTextStyle
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              bgColor: kCardBgColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Normal',
                    textAlign: TextAlign.center,
                    style: kResultTextStyle
                  ),
                  Text(
                    '18.3',
                    textAlign: TextAlign.center,
                    style: kBMItextTextStyle
                  ),
                  Text(
                    'Your BMI result is quite low, you should eat more!',
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () => {
              Navigator.pushNamed(context, '/')
            },
            buttonTitle: 'RECALCULATE',
          ),
        ],
      ),
    );
  }
}
