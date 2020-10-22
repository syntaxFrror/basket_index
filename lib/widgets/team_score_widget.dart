// import 'package:basketindex/screens/result.dart';
// import 'package:flutter/material.dart';
// import 'package:basketindex/stuff&things/round_icon_button.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:basketindex/stuff&things/constants.dart';
// import 'package:basketindex/brainz.dart';

// class TeamScoreWidget extends StatefulWidget {
//   final String teamName;
//   final int teamScore;
//   final int trackingScore;
//   final int team1Score;
//   final int team2Score;
//   final String winnerTeam;

//   TeamScoreWidget(
//       {@required this.teamName,
//       this.teamScore,
//       this.trackingScore,
//       this.team1Score,
//       this.team2Score,
//       this.winnerTeam});

//   @override
//   _TeamScoreWidgetState createState() => _TeamScoreWidgetState(
//       teamName, teamScore, trackingScore, team1Score, team2Score, winnerTeam);
// }

// class _TeamScoreWidgetState extends State<TeamScoreWidget> {
//   final String teamName;
//   var teamScore;
//   final trackingScore;
//   var team1Score;
//   var team2Score;
//   final winnerTeam;

//   _TeamScoreWidgetState(this.teamName, this.teamScore, this.trackingScore,
//       this.team1Score, this.team2Score, this.winnerTeam);

//   CheckScoreBrain checkScore = CheckScoreBrain();

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(
//           teamName,
//         ),
//         Row(
//           children: [
//             RoundIconButton(
//                 icon: FontAwesomeIcons.minus,
//                 onPressed: () {
//                   setState(() {
//                     teamScore--;
//                   });
//                 }),
//             SizedBox(
//               width: 10.0,
//             ),
//             Text(
//               teamScore.toString(),
//               style: kTeamScoreTextStyle,
//             ),
//             SizedBox(
//               width: 10.0,
//             ),
//             RoundIconButton(
//                 icon: FontAwesomeIcons.plus,
//                 onPressed: () {
//                   setState(() {
//                     teamScore++;

//                     print(team1Score);
//                     print(team2Score);
//                     print(teamScore);
//                     // Provera dokle je stigao rezultat i da li se poklapa sa izabranim rezultatom sa slajdera
//                     if (checkScore.checkScore(teamScore, trackingScore)) {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) {
//                             return ResultPage(
//                               team1Score: team1Score,
//                               team2Score: team2Score,
//                               winnerTeam: winnerTeam,
//                             );
//                           },
//                         ),
//                       );
//                     }
//                   });
//                 }),
//           ],
//         ),
//       ],
//     );
//   }
// }
