import 'package:basketindex/screens/result.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:basketindex/stuff&things/main_menu_button.dart';
import 'package:basketindex/screens/score_input.dart';
import 'package:basketindex/screens/about.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3x3 Basket'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ButtonMainMenu(
            buttonName: 'New Match',
            // NEW MATCH START
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ScoreInput();
                  },
                ),
              );
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          ButtonMainMenu(
            buttonName: 'History',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ResultPage();
                  },
                ),
              );
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          ButtonMainMenu(
            buttonName: 'About',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AboutScreen();
                  },
                ),
              );
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          ButtonMainMenu(
            buttonName: 'Exit',
            onPressed: () => exit(0),
          ),
        ],
      ),
    );
  }
}
