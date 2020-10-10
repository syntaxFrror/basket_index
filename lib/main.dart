import 'package:flutter/material.dart';
import 'score_input.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.grey[800],
          scaffoldBackgroundColor: Colors.blueGrey),
      home: ScoreInput(),
    );
  }
}
