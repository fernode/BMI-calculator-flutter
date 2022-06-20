import 'package:flutter/material.dart';

import '../constants.dart';
import '../screens/result_page.dart';

class Footer extends StatelessWidget {
  const Footer({
    required double currentHeightValue,
    required int weight,
    required int age,
  })  : _currentHeightValue = currentHeightValue,
        _weight = weight,
        _age = age;

  final double _currentHeightValue;
  final int _weight;
  final int _age;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: Size.infinite.width,
        child: ElevatedButton(
          child: Text('CALCULATE'),
          style: ElevatedButton.styleFrom(
            primary: kFooterColour,
            shadowColor: Colors.white,
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(
              context,
              ResultPage.routeName,
              arguments: ResultPageArguments(
                _currentHeightValue.toInt(),
                _weight,
                _age,
              ),
            );
          },
        ),
      ),
    );
  }
}
