import 'package:flutter/material.dart';

import 'package:bmi_calculator/constants.dart';


class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTapped, @required this.bottomText});

  final Function onTapped;
  final String bottomText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        height: bottomContainerHeight,
        width: double.infinity,
        color: bottomContainerColor,
        margin: EdgeInsets.only(top: 5.0),
        child: Center(
          child: Text(
            bottomText,
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ),
      ),
    );
  }
}
