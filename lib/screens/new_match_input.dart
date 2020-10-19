import 'package:basketindex/screens/score_input.dart';
import 'package:flutter/material.dart';
import 'package:basketindex/stuff&things/main_menu_button.dart';

class NewMatchInput extends StatefulWidget {
  @override
  _NewMatchInputState createState() => _NewMatchInputState();
}

class _NewMatchInputState extends State<NewMatchInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter Player Names"),
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
                decoration: InputDecoration(
                  hintText: 'Player 1 Name',
                ),
              ),
              TextField(
                maxLength: 15,
                maxLengthEnforced: true,
                decoration: InputDecoration(
                  hintText: 'Player 2 Name',
                ),
              ),
              TextField(
                maxLength: 15,
                maxLengthEnforced: true,
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
                decoration: InputDecoration(
                  hintText: 'Player 4 Name',
                ),
              ),
              TextField(
                maxLength: 15,
                maxLengthEnforced: true,
                decoration: InputDecoration(
                  hintText: 'Player 5 Name',
                ),
              ),
              TextField(
                maxLength: 15,
                maxLengthEnforced: true,
                decoration: InputDecoration(
                  hintText: 'Player 6 Name',
                ),
              ),
              ButtonMainMenu(
                buttonName: 'SUBMIT',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ScoreInput();
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
