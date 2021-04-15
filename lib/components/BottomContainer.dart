import 'package:flutter/material.dart';
import '../constants.dart';

class BottomContainer extends StatelessWidget {
  final String text;
  BottomContainer({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      margin: EdgeInsets.only(top: 10.00),
      color: kBottomContainerColor,
      height: kBottomContainerHeight,
      width: double.infinity,
    );
  }
}
