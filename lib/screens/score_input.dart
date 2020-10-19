import 'package:flutter/material.dart';
import 'package:basketindex/widgets/team_score_widget.dart';
import 'package:basketindex/widgets/player_score_widget.dart';

class ScoreInput extends StatefulWidget {
  @override
  _ScoreInputState createState() => _ScoreInputState();
}

class _ScoreInputState extends State<ScoreInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SCORE TRACKING'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          PlayerScoreWidget(
            playerName: 'player 1',
          ),
          Divider(
            color: Colors.white,
            height: 1.0,
          ),
          PlayerScoreWidget(
            playerName: 'player 2',
          ),
          Divider(
            color: Colors.white,
            height: 1.0,
          ),
          PlayerScoreWidget(
            playerName: 'player 3',
          ),
          Divider(
            color: Colors.white,
            height: 1.0,
          ),
          PlayerScoreWidget(
            playerName: 'player 4',
          ),
          Divider(
            color: Colors.white,
            height: 1.0,
          ),
          PlayerScoreWidget(
            playerName: 'player 5',
          ),
          Divider(
            color: Colors.white,
            height: 1.0,
          ),
          PlayerScoreWidget(
            playerName: 'player 6',
          ),
          Divider(
            color: Colors.white,
            height: 1.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TeamScoreWidget(
                teamName: 'TEAM 1',
              ),
              SizedBox(
                width: 15.0,
              ),
              TeamScoreWidget(
                teamName: 'TEAM 2',
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
