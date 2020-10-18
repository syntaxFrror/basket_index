import 'package:flutter/material.dart';
import 'package:basketindex/stuff&things/round_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:basketindex/stuff&things/constants.dart';

class TeamScoreWidget extends StatefulWidget {
  final String teamName;

  TeamScoreWidget({@required this.teamName});

  @override
  _TeamScoreWidgetState createState() => _TeamScoreWidgetState(teamName);
}

class _TeamScoreWidgetState extends State<TeamScoreWidget> {
  int teamScore = 0;
  final String teamName;

  _TeamScoreWidgetState(this.teamName);

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
                  });
                }),
          ],
        ),
      ],
    );
  }
}
