import 'package:basketindex/screens/result.dart';
import 'package:flutter/material.dart';
import 'package:basketindex/stuff&things/round_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:basketindex/stuff&things/constants.dart';
import 'package:basketindex/brainz.dart';
import 'package:basketindex/screens/new_match_input.dart';
import 'package:basketindex/screens/score_input.dart';

class TeamScoreWidget extends StatefulWidget {
  final String teamName;
  final int teamScore;
  final int finalScore;

  TeamScoreWidget({@required this.teamName, this.teamScore, this.finalScore});

  @override
  _TeamScoreWidgetState createState() =>
      _TeamScoreWidgetState(teamName, teamScore, finalScore);
}

class _TeamScoreWidgetState extends State<TeamScoreWidget> {
  final String teamName;
  int teamScore = 0;
  final finalScore;
  _TeamScoreWidgetState(this.teamName, this.teamScore, this.finalScore);

  // UMESTO OVOGA TREBA MI TRACKING SCORE SA SCORE_INPUT
  // int finalScore = NewMatchInputState().finalScore;

  // int finalScore = ScoreInput().trackingScore;

  CheckScoreBrain checkScore = CheckScoreBrain();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          teamName,
        ),
        Row(
          children: [
            RoundIconButton(
                icon: FontAwesomeIcons.minus,
                onPressed: () {
                  setState(() {
                    teamScore--;
                  });
                }),
            SizedBox(
              width: 10.0,
            ),
            Text(
              teamScore.toString(),
              style: kTeamScoreTextStyle,
            ),
            SizedBox(
              width: 10.0,
            ),
            RoundIconButton(
                icon: FontAwesomeIcons.plus,
                onPressed: () {
                  setState(() {
                    teamScore++;
                    print(finalScore);
                    // OVDE TREBA DA SE POSTAVI TRACKING SCORE umesto FINALSCORE, tj da finalScore == ScoreInput().trackingScore
                    if (checkScore.checkScore(teamScore, finalScore)) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ResultPage();
                          },
                        ),
                      );
                    }
                  });
                }),
          ],
        ),
      ],
    );
  }
}
