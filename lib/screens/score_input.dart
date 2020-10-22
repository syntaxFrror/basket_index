import 'package:flutter/material.dart';
// import 'package:basketindex/widgets/player_score_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:basketindex/stuff&things/constants.dart';
import 'package:basketindex/stuff&things/round_icon_button.dart';
import 'package:basketindex/screens/result.dart';
import 'package:basketindex/brainz.dart';
// import 'package:basketindex/stuff&things/best_player_index.dart';

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

  ScoreInputState(this.names, this.trackingScore);

  String teamName;
  int teamScore;
  String winnerTeam;

  CheckScoreBrain checkScore = CheckScoreBrain();

  int team1Score = 0;
  int team2Score = 0;

  int player1index = 0;
  int player2index = 0;
  int player3index = 0;
  int player4index = 0;
  int player5index = 0;
  int player6index = 0;

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
          // PLAYER 1 SCORING INDEX
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(names[0], style: kPlayerTextStyle),
                RoundIconButton(
                    icon: FontAwesomeIcons.minus,
                    onPressed: () {
                      setState(() {
                        player1index--;
                      });
                    }),
                Text(
                  player1index.toString(),
                  style: kPlayerScoreTextStyle,
                ),
                RoundIconButton(
                  icon: FontAwesomeIcons.plus,
                  onPressed: () {
                    setState(() {
                      player1index++;
                      print(player1index);
                    });
                  },
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.white,
            height: 1.0,
          ),
          // PLAYER 2 SCORING INDEX
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(names[1], style: kPlayerTextStyle),
                RoundIconButton(
                    icon: FontAwesomeIcons.minus,
                    onPressed: () {
                      setState(() {
                        player2index--;
                      });
                    }),
                Text(
                  player2index.toString(),
                  style: kPlayerScoreTextStyle,
                ),
                RoundIconButton(
                  icon: FontAwesomeIcons.plus,
                  onPressed: () {
                    setState(() {
                      player2index++;
                      print(player2index);
                    });
                  },
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.white,
            height: 1.0,
          ),
          // PLAYER 3 SCORING INDEX
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(names[2], style: kPlayerTextStyle),
                RoundIconButton(
                    icon: FontAwesomeIcons.minus,
                    onPressed: () {
                      setState(() {
                        player3index--;
                      });
                    }),
                Text(
                  player3index.toString(),
                  style: kPlayerScoreTextStyle,
                ),
                RoundIconButton(
                  icon: FontAwesomeIcons.plus,
                  onPressed: () {
                    setState(() {
                      player3index++;
                      print(player3index);
                    });
                  },
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.white,
            height: 1.0,
          ),
          // PLAYER 4 SCORING INDEX
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(names[3], style: kPlayerTextStyle),
                RoundIconButton(
                    icon: FontAwesomeIcons.minus,
                    onPressed: () {
                      setState(() {
                        player4index--;
                      });
                    }),
                Text(
                  player4index.toString(),
                  style: kPlayerScoreTextStyle,
                ),
                RoundIconButton(
                  icon: FontAwesomeIcons.plus,
                  onPressed: () {
                    setState(() {
                      player4index++;
                      print(player4index);
                    });
                  },
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.white,
            height: 1.0,
          ),
          // PLAYER 5 SCORING INDEX
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(names[4], style: kPlayerTextStyle),
                RoundIconButton(
                    icon: FontAwesomeIcons.minus,
                    onPressed: () {
                      setState(() {
                        player5index--;
                      });
                    }),
                Text(
                  player5index.toString(),
                  style: kPlayerScoreTextStyle,
                ),
                RoundIconButton(
                  icon: FontAwesomeIcons.plus,
                  onPressed: () {
                    setState(() {
                      player5index++;
                      print(player5index);
                    });
                  },
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.white,
            height: 1.0,
          ),
          // PLAYER 6 SCORING INDEX
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(names[5], style: kPlayerTextStyle),
                RoundIconButton(
                    icon: FontAwesomeIcons.minus,
                    onPressed: () {
                      setState(() {
                        player6index--;
                      });
                    }),
                Text(
                  player6index.toString(),
                  style: kPlayerScoreTextStyle,
                ),
                RoundIconButton(
                  icon: FontAwesomeIcons.plus,
                  onPressed: () {
                    setState(() {
                      player6index++;
                      print(player6index);
                    });
                  },
                ),
              ],
            ),
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
                            // Provera dokle je stigao rezultat i da li se poklapa sa izabranim rezultatom sa slajdera
                            if (checkScore.checkScore(
                                team1Score, trackingScore)) {
                              List<int> team1MVP = [
                                player1index,
                                player2index,
                                player3index,
                              ];
                              List<String> team1Winners = [
                                names[0],
                                names[1],
                                names[2],
                              ];
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ResultPage(
                                      team1Score: team1Score,
                                      team2Score: team2Score,
                                      winnerTeam: 'TEAM 1',
                                      bestIndexes: team1MVP,
                                      winners: team1Winners,
                                    );
                                  },
                                ),
                              );
                            }
                          });
                        },
                      ),
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
                            // Provera dokle je stigao rezultat i da li se poklapa sa izabranim rezultatom sa slajdera
                            if (checkScore.checkScore(
                                team2Score, trackingScore)) {
                              List<int> team2MVP = [
                                player4index,
                                player5index,
                                player6index
                              ];
                              List<String> team2Winners = [
                                names[3],
                                names[4],
                                names[5],
                              ];
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ResultPage(
                                      team1Score: team1Score,
                                      team2Score: team2Score,
                                      winnerTeam: 'TEAM 2',
                                      bestIndexes: team2MVP,
                                      winners: team2Winners,
                                    );
                                  },
                                ),
                              );
                            }
                          });
                        },
                      ),
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
