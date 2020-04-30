import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class GenderSelection extends StatelessWidget {
  final String gender;
  final IconData icon;

  GenderSelection({@required this.gender, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 70.0,
          color: Color(0xFFFEFEFE),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          gender,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
