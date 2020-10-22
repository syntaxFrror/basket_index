import 'package:flutter/material.dart';
import 'package:basketindex/widgets/player_score_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:basketindex/stuff&things/constants.dart';
import 'package:basketindex/stuff&things/round_icon_button.dart';
import 'package:basketindex/screens/result.dart';
import 'package:basketindex/brainz.dart';

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

  String teamName;
  int teamScore;
  String winnerTeam;

  CheckScoreBrain checkScore = CheckScoreBrain();

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
              // TEAM 1 SCORE WIDGET
              Column(
                children: [
                  Text(
                    'TEAM 1',
                  ),
                  Row(
                    children: [
                      RoundIconButton(
                          icon: FontAwesomeIcons.minus,
                          onPressed: () {
                            setState(() {
                              team1Score--;
                            });
                          }),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        team1Score.toString(),
                        style: kTeamScoreTextStyle,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPressed: () {
                            setState(() {
                              team1Score++;
                              print(team1Score);
                              print(team2Score);
                              print(teamScore);
                              // Provera dokle je stigao rezultat i da li se poklapa sa izabranim rezultatom sa slajdera
                              if (checkScore.checkScore(
                                  team1Score, trackingScore)) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return ResultPage(
                                        team1Score: team1Score,
                                        team2Score: team2Score,
                                        winnerTeam: 'TEAM 1',
                                      );
                                    },
                                  ),
                                );
                              }
                            });
                          }),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 15.0,
              ),
              // TEAM 2 SCORE WIDGET
              Column(
                children: [
                  Text(
                    'TEAM 2',
                  ),
                  Row(
                    children: [
                      RoundIconButton(
                          icon: FontAwesomeIcons.minus,
                          onPressed: () {
                            setState(() {
                              team2Score--;
                            });
                          }),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        team2Score.toString(),
                        style: kTeamScoreTextStyle,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPressed: () {
                            setState(() {
                              team2Score++;

                              print(team1Score);
                              print(team2Score);
                              print(teamScore);
                              // Provera dokle je stigao rezultat i da li se poklapa sa izabranim rezultatom sa slajdera
                              if (checkScore.checkScore(
                                  team2Score, trackingScore)) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return ResultPage(
                                        team1Score: team1Score,
                                        team2Score: team2Score,
                                        winnerTeam: 'TEAM 2',
                                      );
                                    },
                                  ),
                                );
                              }
                            });
                          }),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
