import 'package:flutter/material.dart';
import 'package:snakeandspiderapp/components/ReusableCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:snakeandspiderapp/components/IconContent.dart';
import 'package:snakeandspiderapp/components/BottomContainer.dart';
import 'package:snakeandspiderapp/constants.dart';
import 'SnakeCam.dart';
import 'SpiderCam.dart';

enum Choice { snake, spider }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

Choice selectedChoice;

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SNAKES AND SPIDER FINDER'),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedChoice = Choice.snake;
                    });
                  },
                  cardChild: IconContent(
                    icon: Icons.timeline,
                    label: 'SNAKE',
                  ),
                  colour: selectedChoice == Choice.snake
                      ? kActiveCardColor
                      : kInactiveCardColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedChoice = Choice.spider;
                    });
                  },
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.spider,
                    label: 'SPIDER',
                  ),
                  colour: selectedChoice == Choice.spider
                      ? kActiveCardColor
                      : kInactiveCardColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (selectedChoice == Choice.snake) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SnakeCam()));
                  } else if (selectedChoice == Choice.spider) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SpiderCam()));
                  }
                },
                child: BottomContainer(
                  text: 'FIND IT!',
                ),
              )
            ]));
  }
}
