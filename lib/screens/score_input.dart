import 'package:flutter/material.dart';
import 'package:basketindex/widgets/team_score_widget.dart';
import 'package:basketindex/widgets/player_score_widget.dart';

class ScoreInput extends StatefulWidget {
  ScoreInput({this.names, this.trackingScore});

  final List<String> names;
  final int trackingScore;

  @override
  ScoreInputState createState() => ScoreInputState(names, trackingScore);
}

class ScoreInputState extends State<ScoreInput> {
  final List names;
  final int trackingScore;

  int team1Score = 0;
  int team2Score = 0;

  ScoreInputState(this.names, this.trackingScore);

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
            playerName: names[0],
          ),
          Divider(
            color: Colors.white,
            height: 1.0,
          ),
          PlayerScoreWidget(
            playerName: names[1],
          ),
          Divider(
            color: Colors.white,
            height: 1.0,
          ),
          PlayerScoreWidget(
            playerName: names[2],
          ),
          Divider(
            color: Colors.white,
            height: 1.0,
          ),
          PlayerScoreWidget(
            playerName: names[3],
          ),
          Divider(
            color: Colors.white,
            height: 1.0,
          ),
          PlayerScoreWidget(
            playerName: names[4],
          ),
          Divider(
            color: Colors.white,
            height: 1.0,
          ),
          PlayerScoreWidget(
            playerName: names[5],
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
                teamScore: team1Score,
                trackingScore: trackingScore,
                team1Score: team1Score,
                team2Score: team2Score,
                winnerTeam: 'TEAM 1',
              ),
              SizedBox(
                width: 15.0,
              ),
              TeamScoreWidget(
                teamName: 'TEAM 2',
                teamScore: team2Score,
                trackingScore: trackingScore,
                team1Score: team1Score,
                team2Score: team2Score,
                winnerTeam: 'TEAM 2',
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
