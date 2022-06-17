import 'package:flutter/material.dart';

const iconSize = 50.0;
const Color iconColour = Color(0xFF8D8E98);
const fontSize = 18.0;
const sizeBoxHeight = 15.0;

class IconContent extends StatelessWidget {
  final String name;
  final IconData icon;

  IconContent({this.name, this.icon});

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
        Text(name,
            style: TextStyle(
              fontSize: fontSize,
              color: iconColour,
            ))
      ],
    );
  }
}
