import 'package:flutter/material.dart';
// import 'screens/score_input.dart';
import 'screens/main_menu.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.grey[800],
          scaffoldBackgroundColor: Colors.blueGrey),
      home: MainMenu(),
    );
  }
}
