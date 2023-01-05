class player {
  static const x = "x";
  static const o = "o";
  static const empty = "";
}

class Game {
  static final boardlenth = 9; // we will creare abourd of 3*3
  static final blocsize = 100.0;

  // crearing the emoty board

  List<String>? board;

  static List<String>? initgameboard() =>
      List.generate(boardlenth, (index) => player.empty);

  // now we need to build the winner check algorithm
// for this we need first to declare a scoreboard in our main file

  bool winnercheck(
    String player,
    int index,
    List<int> scoreboard,
    int gridsize,
  ) {
// first let's declare the Row and Col
    int row = index ~/ 3;
    int col = index % 3;
    int score = player == "x" ? 1 : -1;

    scoreboard[row] += score;
    scoreboard[gridsize + col] += score;
    if (row == col) scoreboard[2 * gridsize] += score;
    if (gridsize - 1 - col == row) scoreboard[2 * gridsize + 1] += score;

// checking if we have 3 or -3 in the score board
    if (scoreboard.contains(3) || scoreboard.contains(-3)) {
      return true;
    }

    //by default it will return false
    return false;
  }
}
