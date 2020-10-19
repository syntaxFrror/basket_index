import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About the app'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Text(
          // GENERAL INFORMATION
          'This app is used for tracking PIR (performance index rating) and team scores. Maximum number of players is 6 and its meant for 3vs3 street basketball. Calculations of PIRs is simple, for every point, rebound, assist, steal, block and fouls drawn you add(+) 1 point to players PIR and for every missed field goal, turnover, shot rejected and foul commited you substract(-) 1 point from players PIR.',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
