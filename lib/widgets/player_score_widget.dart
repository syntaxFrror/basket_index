import 'package:flutter/material.dart';
import 'package:basketindex/stuff&things/round_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:basketindex/stuff&things/constants.dart';

class PlayerScoreWidget extends StatefulWidget {
  final String playerName;

  PlayerScoreWidget({@required this.playerName});

  @override
  _PlayerScoreWidgetState createState() => _PlayerScoreWidgetState(playerName);
}

class _PlayerScoreWidgetState extends State<PlayerScoreWidget> {
  int indexScore = 0;
  final String playerName;

  _PlayerScoreWidgetState(this.playerName);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(playerName, style: kPlayerTextStyle),
          RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onPressed: () {
                setState(() {
                  indexScore--;
                });
              }),
          Text(
            indexScore.toString(),
            style: kPlayerScoreTextStyle,
          ),
          RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onPressed: () {
                setState(() {
                  indexScore++;
                });
              }),
        ],
      ),
    );
  }
}
