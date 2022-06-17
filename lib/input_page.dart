import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './icon_content.dart';
import './reusable_card.dart';

const footerHeight = 40.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
final footerColour = Color(0xFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool _isMaleCardActive = false;
  bool _isFemaleCardActive = false;

  void selectActiveCard(Gender card) {
    if (card == Gender.male) {
      setState(() {
        _isMaleCardActive = true;
        _isFemaleCardActive = false;
      });
    } else {
      setState(() {
        _isMaleCardActive = false;
        _isFemaleCardActive = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    selectActiveCard(Gender.male);
                  },
                  child: ReusableCard(
                    child:
                        IconContent(icon: FontAwesomeIcons.mars, name: 'MALE'),
                    colour: _isMaleCardActive
                        ? activeCardColour
                        : inactiveCardColour,
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    selectActiveCard(Gender.female);
                  },
                  child: ReusableCard(
                    child: IconContent(
                        icon: FontAwesomeIcons.venus, name: 'FEMALE'),
                    colour: _isFemaleCardActive
                        ? activeCardColour
                        : inactiveCardColour,
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  child: Text(''),
                  colour: activeCardColour,
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  child: Text(''),
                  colour: activeCardColour,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  child: Text(''),
                  colour: activeCardColour,
                ),
              )
            ],
          ),
          Container(
            color: footerColour,
            width: double.infinity,
            height: footerHeight,
            margin: EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}
