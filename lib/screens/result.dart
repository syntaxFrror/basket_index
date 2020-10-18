import 'package:basketindex/screens/main_menu.dart';
import 'package:flutter/material.dart';
import 'package:basketindex/stuff&things/main_menu_button.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'TEAM x WON',
              style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
              'MVP: player x',
              style: TextStyle(fontSize: 40.0),
            ),
            SizedBox(
              height: 25.0,
            ),
            ButtonMainMenu(
              buttonName: 'Main menu ->',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MainMenu();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
