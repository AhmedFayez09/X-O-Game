import 'package:flutter/material.dart';
import 'gamelogic.dart';

// ignore: camel_case_types
class gamescreen extends StatefulWidget {
  const gamescreen({Key? key}) : super(key: key);

  @override
  State<gamescreen> createState() => _gamescreenState();
}

// ignore: camel_case_types
class _gamescreenState extends State<gamescreen> {
  String lastvalue = "x";
  bool gameover = false;
  int turn = 0; // to check the drow
  String result = "";
  List<int> scoreboard = [
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  ]; // the score aer for the different combination of the game [Row1,2,3 , col 1,2,3, Diagonal 1,2]

  // let's declore a new Game components

  Game game = Game();

  // let initi the game board

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    game.board = Game.initgameboard();
    print(game.board);
  }

  @override
  Widget build(BuildContext context) {
    double boardwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "It's  $lastvalue turn".toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 58,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),

          // now make  game board

          SizedBox(
            width: boardwidth,
            height: boardwidth,
            child: GridView.count(
              crossAxisCount: Game.boardlenth ~/ 3,
              // the ~/ operator that allows to evide to integer and return an Int as result

              padding: const EdgeInsets.all(16.0),
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
              children: List.generate(Game.boardlenth, (index) {
                return InkWell(
                  onTap: gameover
                      ? null
                      : () {
                          // when we click we need to add the new value to the board and refrech the screen
                          //we need also to toggle the player
                          //now we need to apply the click only if field is empty
                          // now let's create a button to repeat the game
                          if (game.board![index] == "") {
                            setState(() {
                              game.board![index] = lastvalue;
                              turn++;
                              gameover = game.winnercheck(
                                  lastvalue, index, scoreboard, 3);

                              if (gameover) {
                                result = " $lastvalue is the winner";
                              } else if (!gameover && turn == 9) {
                                result = " SOORY ,It's a Draw!";
                                gameover = true;
                              }

                              if (lastvalue == "x")
                                lastvalue = "o";
                              else
                                lastvalue = "x";
                            });
                          }
                        },
                  child: Container(
                    width: Game.blocsize,
                    height: Game.blocsize,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[600],
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Center(
                      child: Text(
                        game.board![index],
                        style: TextStyle(
                          color: game.board![index] == "x"
                              ? Colors.blueGrey[400]
                              : Colors.pink,
                          fontSize: 64.0,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),

          const SizedBox(height: 25.0),
          Text(
            result,
            style: const TextStyle(color: Colors.white, fontSize: 54.0),
          ),

          ElevatedButton.icon(
            onPressed: () {
              setState(() {
                //erase the board
                game.board = Game.initgameboard();
                lastvalue = "x";
                gameover = false;
                turn = 0;
                result = "";
                scoreboard = [0, 0, 0, 0, 0, 0, 0, 0];
              });
            },
            icon: Icon(Icons.replay),
            label: Text("Repeat the Game"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
            ),
          ),
        ],
      ),
    );
  }
}
