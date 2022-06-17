import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './icon_content.dart';
import './reusable_card.dart';

const footerHeight = 40.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const footerColour = Color(0xFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender seletedGender;

  void selectGender(Gender gender) {
    setState(() {
      seletedGender = gender;
    });
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
                child: ReusableCard(
                  onPress: () {
                    selectGender(Gender.male);
                  },
                  child: IconContent(icon: FontAwesomeIcons.mars, name: 'MALE'),
                  colour: seletedGender == Gender.male
                      ? activeCardColour
                      : inactiveCardColour,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    selectGender(Gender.female);
                  },
                  child:
                      IconContent(icon: FontAwesomeIcons.venus, name: 'FEMALE'),
                  colour: seletedGender == Gender.female
                      ? activeCardColour
                      : inactiveCardColour,
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
