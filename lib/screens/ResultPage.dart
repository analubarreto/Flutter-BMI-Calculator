import 'package:bmi_calulator/components/ButtonButton.dart';
import 'package:bmi_calulator/components/card/ReusableCard.dart';
import 'package:bmi_calulator/components/card/constants/cardStyles.dart';
import 'package:flutter/material.dart';
import './constants/styleConstants.dart';
import '../components/card/constants/cardStyles.dart';
import '../components/card/ReusableCard.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({ this.bmiResult, this.interpretation, this.resultText });

  final String bmiResult;
  final String resultText;
  final String interpretation;

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
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.center,
              child: Text(
                'Your Result',
                style: kTitleTextStyle
              ),
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
                    resultText,
                    textAlign: TextAlign.center,
                    style: kResultTextStyle
                  ),
                  Text(
                    bmiResult,
                    textAlign: TextAlign.center,
                    style: kBMItextTextStyle
                  ),
                  Text(
                    interpretation,
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
