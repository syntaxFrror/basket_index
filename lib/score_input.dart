import 'team_score_widget.dart';
import 'package:flutter/material.dart';
import 'player_score_widget.dart';
// import 'round_icon_button.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:basketindex/constants.dart';

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
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        PlayerScoreWidget(),
        Divider(
          color: Colors.white,
          height: 1.0,
        ),
        PlayerScoreWidget(),
        Divider(
          color: Colors.white,
          height: 1.0,
        ),
        PlayerScoreWidget(),
        Divider(
          color: Colors.white,
          height: 1.0,
        ),
        PlayerScoreWidget(),
        Divider(
          color: Colors.white,
          height: 1.0,
        ),
        PlayerScoreWidget(),
        Divider(
          color: Colors.white,
          height: 1.0,
        ),
        PlayerScoreWidget(),
        Divider(
          color: Colors.white,
          height: 1.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TeamScoreWidget(),
            SizedBox(
              width: 15.0,
            ),
            TeamScoreWidget(),
          ],
        ),
      ]),
    );
  }
}
