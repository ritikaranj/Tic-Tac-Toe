import 'package:flutter/material.dart';
import 'aboutMe.dart';


class Homepage extends StatefulWidget {

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
//TODO link up image

  AssetImage cross =AssetImage("assets/cross.png");
  AssetImage circle = AssetImage("assets/circle.png");
  AssetImage edit = AssetImage("assets/edit.png");

  bool isCross = true;
  String message;
  List<String> gameState;




  //TODO initialize the state of box with empty
  @override
  void initState() {
    super.initState();
    setState(() {
      this.gameState = [
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
      ];
      this.message = "";
    });
  }

  //TODO: playGame method
  playGame(int index) {
    if (this.gameState[index] == "empty") {
      setState(() {
        if (this.isCross) {
          this.gameState[index] = "cross";
        } else {
          this.gameState[index] = "circle";
        }
        this.isCross = !this.isCross;
        this.checkWin();
      });
    }
  }



  //TODO: Reset game method
  resetGame() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        this.gameState = [
          "empty",
          "empty",
          "empty",
          "empty",
          "empty",
          "empty",
          "empty",
          "empty",
          "empty",
        ];
        this.message = "";

    });
    });
  }
  //TODO: get image method
  AssetImage getImage(String value) {
    switch (value) {
      case ('empty'):
        return edit;
        break;
      case ('cross'):
        return cross;
        break;
      case ('circle'):
        return circle;
        break;
    }
  }

  //TODO: check for win logic
  checkWin() {
    if ((gameState[0] != 'empty') &&
        (gameState[0] == gameState[1]) &&
        (gameState[1] == gameState[2])) {
      // if any user Win update the message state
      setState(() {
        this.message = '${this.gameState[0]} wins';
        this.resetGame();
      });
    } else if ((gameState[3] != 'empty') &&
        (gameState[3] == gameState[4]) &&
        (gameState[4] == gameState[5])) {
      setState(() {
        this.message = '${this.gameState[3]} wins';
        this.resetGame();
      });
    } else if ((gameState[6] != 'empty') &&
        (gameState[6] == gameState[7]) &&
        (gameState[7] == gameState[8])) {
      setState(() {
        this.message = '${this.gameState[6]} wins';
        this.resetGame();
      });
    } else if ((gameState[0] != 'empty') &&
        (gameState[0] == gameState[3]) &&
        (gameState[3] == gameState[6])) {
      setState(() {
        this.message = '${this.gameState[0]} wins';
        this.resetGame();
      });
    } else if ((gameState[1] != 'empty') &&
        (gameState[1] == gameState[4]) &&
        (gameState[4] == gameState[7])) {
      setState(() {
        this.message = '${this.gameState[1]} wins';
        this.resetGame();
      });
    } else if ((gameState[2] != 'empty') &&
        (gameState[2] == gameState[5]) &&
        (gameState[5] == gameState[8])) {
      setState(() {
        this.message = '${this.gameState[2]} wins';
        this.resetGame();
      });
    } else if ((gameState[0] != 'empty') &&
        (gameState[0] == gameState[4]) &&
        (gameState[4] == gameState[8])) {
      setState(() {
        this.message = '${this.gameState[0]} wins';
        this.resetGame();
      });
    } else if ((gameState[2] != 'empty') &&
        (gameState[2] == gameState[4]) &&
        (gameState[4] == gameState[6])) {
      setState(() {
        this.message = '${this.gameState[2]} wins';
        this.resetGame();
      });
    } else if (!gameState.contains('empty')) {
      setState(() {
        this.message = 'Game Draw';
        this.resetGame();
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        title: Text('Tic Tac Toe'),
        backgroundColor: Colors.pink[100],
        elevation: 40.0,
        actions: [
          IconButton(icon: Icon(Icons.account_circle_outlined),
              onPressed:(){
            Navigator.of(context)
                .push(
              MaterialPageRoute(builder: (context) => aboutMe())
            );
              },
          ),
        ],
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: GridView.builder(
                  padding: EdgeInsets.all(20.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.0,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 50.0,
                  ),
                itemCount: this.gameState.length,
                itemBuilder: (context, i)=> SizedBox(
                  width: 100.0,
                  height: 100.0,
                  child: MaterialButton(
                    onPressed: (){
                      this.playGame(i);
                    },
                    child: Image(
                      image: this.getImage(this.gameState[i]),
                    ),
                  ),
                ),
              )
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text(
              this.message,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,

              ),
            ),
          ),
          Center(
            child: MaterialButton(

                color: Colors.pinkAccent[400],
                minWidth: 300.0,
                height: 50.0,
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(40.0),),
                child: Text('Rest Game',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),),
                onPressed: (){
              this.resetGame();
            }
            ),
          ),


          SizedBox(height: 120.0),
        ],

      ),


      );

  }
}


