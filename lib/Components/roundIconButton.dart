import 'package:flutter/material.dart';

import 'package:bmi_calculator/constants.dart';


class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      fillColor: fabColor,
      shape: CircleBorder(),
      elevation: 10.0,
      constraints: BoxConstraints.tightFor(
        height: 50.0,
        width: 50.0,
      ),
    );
  }
}
