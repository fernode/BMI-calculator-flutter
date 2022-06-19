import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './icon_content.dart';
import './reusable_card.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender seletedGender;

  selectGender(Gender gender) {
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
                      ? kActiveCardColour
                      : kInactiveCardColour,
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
                      ? kActiveCardColour
                      : kInactiveCardColour,
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  child: Column(
                    children: [
                      Text(
                        'HEIGHT',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  colour: kActiveCardColour,
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  child: Text(''),
                  colour: kActiveCardColour,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  child: Text(''),
                  colour: kActiveCardColour,
                ),
              )
            ],
          ),
          Container(
            color: kFooterColour,
            width: double.infinity,
            height: kFooterHeight,
          )
        ],
      ),
    );
  }
}
