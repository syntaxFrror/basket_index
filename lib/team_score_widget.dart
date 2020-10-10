import 'package:flutter/material.dart';
import 'round_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class TeamScoreWidget extends StatefulWidget {
  const TeamScoreWidget({
    Key key,
  }) : super(key: key);

  @override
  _TeamScoreWidgetState createState() => _TeamScoreWidgetState();
}

class _TeamScoreWidgetState extends State<TeamScoreWidget> {
  int teamScore = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Team 1',
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
