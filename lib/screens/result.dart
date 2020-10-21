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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              // Ovde umesto x dodati vrednost (1 ili 2) koji tim
              'TEAM x WON',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'WITH RESULT',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              '11 : 9',
              style: TextStyle(fontSize: 30.0),
            ),
            SizedBox(
                width: 200.0,
                child: Divider(
                  thickness: 2.0,
                  color: Colors.white,
                )),
            Text(
              'MVP is player x',
              style: TextStyle(fontSize: 40.0),
            ),
            Text(
              'WITH INDEX',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              '14',
              style: TextStyle(fontSize: 30.0),
            ),
            SizedBox(
                width: 200.0,
                child: Divider(
                  thickness: 2.0,
                  color: Colors.white,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonMainMenu(
                  buttonName: 'SAVE',
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
                SizedBox(
                  width: 30.0,
                ),
                ButtonMainMenu(
                  buttonName: 'EXIT',
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
          ],
        ),
      ),
    );
  }
}
