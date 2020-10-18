import 'package:flutter/material.dart';

class ButtonMainMenu extends StatelessWidget {
  final String buttonName;
  final Function onPressed;

  ButtonMainMenu({@required this.buttonName, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Text(
        buttonName,
        style: TextStyle(fontSize: 20.0),
      ),
      onPressed: onPressed,
      elevation: 10.0,
      constraints: BoxConstraints.tightFor(
        height: 80.0,
        width: 100.0,
      ),
      shape: RoundedRectangleBorder(),
      fillColor: Color(0xFF4c4F5E),
    );
  }
}
