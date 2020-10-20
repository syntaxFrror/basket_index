import 'package:basketindex/screens/score_input.dart';
import 'package:flutter/material.dart';
import 'package:basketindex/stuff&things/main_menu_button.dart';

class NewMatchInput extends StatefulWidget {
  @override
  NewMatchInputState createState() => NewMatchInputState();
}

class NewMatchInputState extends State<NewMatchInput> {
  int finalScore = 16;

  List<String> names = [];

  String player1name = '';
  String player2name = '';
  String player3name = '';
  String player4name = '';
  String player5name = '';
  String player6name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setup Your Game"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                "TEAM 1",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Divider(
                height: 1.0,
              ),
              TextField(
                maxLength: 15,
                maxLengthEnforced: true,
                onChanged: (String name) {
                  player1name = name;
                },
                decoration: InputDecoration(
                  hintText: 'Player 1 Name',
                ),
              ),
              TextField(
                maxLength: 15,
                maxLengthEnforced: true,
                onChanged: (String name) {
                  player2name = name;
                },
                decoration: InputDecoration(
                  hintText: 'Player 2 Name',
                ),
              ),
              TextField(
                maxLength: 15,
                maxLengthEnforced: true,
                onChanged: (String name) {
                  player3name = name;
                },
                decoration: InputDecoration(
                  hintText: 'Player 3 Name',
                ),
              ),
              Text(
                "TEAM 2",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Divider(
                height: 1.0,
              ),
              TextField(
                maxLength: 15,
                maxLengthEnforced: true,
                onChanged: (String name) {
                  player4name = name;
                },
                decoration: InputDecoration(
                  hintText: 'Player 4 Name',
                ),
              ),
              TextField(
                maxLength: 15,
                maxLengthEnforced: true,
                onChanged: (String name) {
                  player5name = name;
                },
                decoration: InputDecoration(
                  hintText: 'Player 5 Name',
                ),
              ),
              TextField(
                maxLength: 15,
                maxLengthEnforced: true,
                onChanged: (String name) {
                  player6name = name;
                },
                decoration: InputDecoration(
                  hintText: 'Player 6 Name',
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Final Score $finalScore',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  inactiveTrackColor: Color(0xFF8D8e98),
                  activeTrackColor: Colors.white,
                  thumbColor: Color(0xFF4c4F5E),
                  overlayColor: Color(0x35bdbdbd),
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                ),
                child: Slider(
                  value: finalScore.toDouble(),
                  min: 11.0,
                  max: 21.0,
                  onChanged: (double newValue) {
                    setState(() {
                      finalScore = newValue.round();
                    });
                  },
                ),
              ),
              ButtonMainMenu(
                buttonName: 'SUBMIT',
                onPressed: () {
                  print(finalScore);
                  names.add(player1name);
                  names.add(player2name);
                  names.add(player3name);
                  names.add(player4name);
                  names.add(player5name);
                  names.add(player6name);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ScoreInput(
                          names: names,
                          trackingScore: finalScore,
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
