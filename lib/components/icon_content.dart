import 'package:flutter/material.dart';
import '../constants.dart';

const iconSize = 50.0;
const sizeBoxHeight = 15.0;

class IconContent extends StatelessWidget {
  final String name;
  final IconData icon;

  IconContent({required this.name, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: sizeBoxHeight,
        ),
        Text(
          name,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
