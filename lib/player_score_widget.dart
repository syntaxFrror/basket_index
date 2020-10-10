import 'package:flutter/material.dart';
import 'round_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class PlayerScoreWidget extends StatefulWidget {
  const PlayerScoreWidget({
    Key key,
  }) : super(key: key);

  @override
  _PlayerScoreWidgetState createState() => _PlayerScoreWidgetState();
}

class _PlayerScoreWidgetState extends State<PlayerScoreWidget> {
  int indexScore = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('player name', style: kPlayerTextStyle),
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
