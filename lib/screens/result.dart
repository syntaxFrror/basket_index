import 'package:basketindex/screens/main_menu.dart';
import 'package:flutter/material.dart';
import 'package:basketindex/stuff&things/main_menu_button.dart';
// import 'package:basketindex/stuff&things/best_player_index.dart';
import 'dart:math';

class ResultPage extends StatelessWidget {
  final int team1Score;
  final int team2Score;
  final String winnerTeam;
  final List<int> bestIndexes;
  final List<String> winners;

  ResultPage(
      {@required this.team1Score,
      @required this.team2Score,
      @required this.winnerTeam,
      @required this.bestIndexes,
      @required this.winners});

  String getMVPname({List<int> bestIndexes, List<String> winners}) {
    if (bestIndexes[0] == bestIndexes.reduce(max)) {
      return winners[0];
    } else if (bestIndexes[1] == bestIndexes.reduce(max)) {
      return winners[1];
    } else
      return winners[2];
  }

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
              '$winnerTeam WON',
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
              '$team1Score : $team2Score',
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
                Text(
                  'MVP is ',
                  style: TextStyle(fontSize: 40.0),
                ),
                Text(
                  getMVPname(bestIndexes: bestIndexes, winners: winners)
                      .toString(),
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              'WITH INDEX',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              bestIndexes.reduce(max).toString(),
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
                // ButtonMainMenu(
                //   buttonName: 'SAVE',
                //   onPressed: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) {
                //           return MainMenu();
                //         },
                //       ),
                //     );
                //   },
                // ),
                // SizedBox(
                //   width: 30.0,
                // ),
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
