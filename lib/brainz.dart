class PlayerNameInput {
  PlayerNameInput({this.playerName});

  String playerName;

  var playersNameList = [
    'player1',
    'player2',
    'player3',
    'player4',
    'player5',
    'player6'
  ];

  String giveName(x) {
    return playerName = playersNameList[x];
  }
}
