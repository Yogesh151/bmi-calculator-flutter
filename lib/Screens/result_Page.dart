import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/Components/reusabe_Card.dart';
import 'package:bmi_calculator/Components/bottomButton.dart';
import 'input_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/calculatorBrain.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiResult,
      @required this.interpretation,
      @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  'Your Result',
                  style: TextStyle(
                    fontSize: 38.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: ReusableCard(
              colour: activeCardColor,
              cardWidget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xFF24D876),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      bmiResult,
                      style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            onTapped: () {
              Navigator.pop(context);
            },
            bottomText: 'Re-Calculate Your BMI',
          )
        ],
      ),
    );
  }
}
