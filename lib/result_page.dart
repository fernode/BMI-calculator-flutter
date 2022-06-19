import 'package:flutter/material.dart';

class ResultPageArguments {
  final int height;
  final int weight;
  final int age;

  ResultPageArguments(this.height, this.weight, this.age);
}

class ResultPage extends StatelessWidget {
  static const routeName = '/results';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as ResultPageArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Text('result page ${args.age}'),
    );
  }
}
