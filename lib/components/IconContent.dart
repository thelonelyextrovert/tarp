import 'package:flutter/material.dart';
import 'package:snakeandspiderapp/constants.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, @required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          icon,
          size: 80.00,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
