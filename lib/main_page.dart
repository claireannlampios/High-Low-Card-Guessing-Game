import 'package:flutter/material.dart';
import 'package:hi_lo/game_over.dart';
import 'package:hi_lo/widgets/custom_popup.dart';
import 'package:hi_lo/value.dart';

class MainPage extends StatefulWidget {
  List randomCard = CardValue().getRandom();

  List<String> guessed_cards;
  int score = 0;
  MainPage(this.guessed_cards);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void test(var condition, var newcard) {
    if (condition) {
      setState(() {
        widget.score += 1;
        widget.guessed_cards.insert(0, widget.randomCard[0]);

        widget.randomCard[0] = newcard[0];
        widget.randomCard[1] = newcard[1];
      });
    } else {
      setState(() {
        widget.score = 0;
        for (int i = 0; i < 5; i++) {
          widget.guessed_cards[0] = '';
        }
        widget.randomCard = newcard;
      });
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => GameOver()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color.fromARGB(255, 6, 70, 25),
                Color.fromARGB(255, 95, 175, 57),
              ],
            )),
          ),
        ),
        SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 30, horizontal: 0.15),
                        height: 250,
                        width: 150,
                        child: widget.guessed_cards[0] == ''
                            ? Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(255, 247, 219, 235),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black, spreadRadius: 2)
                                    ]),
                              )
                            : Image.asset(widget.guessed_cards[0]),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 30, horizontal: 0.15),
                        height: 250,
                        width: 150,
                        child: widget.guessed_cards[1] == ''
                            ? Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(255, 247, 219, 235),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black, spreadRadius: 2)
                                    ]),
                              )
                            : Image.asset(widget.guessed_cards[1]),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 30, horizontal: 0.15),
                        height: 250,
                        width: 150,
                        child: widget.guessed_cards[2] == ''
                            ? Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(255, 247, 219, 235),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black, spreadRadius: 2)
                                    ]),
                              )
                            : Image.asset(widget.guessed_cards[2]),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 30, horizontal: 0.15),
                        height: 250,
                        width: 150,
                        child: widget.guessed_cards[3] == ''
                            ? Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(255, 247, 219, 235),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black, spreadRadius: 2)
                                    ]),
                              )
                            : Image.asset(widget.guessed_cards[3]),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 30, horizontal: 0.15),
                        height: 250,
                        width: 150,
                        child: widget.guessed_cards[4] == ''
                            ? Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(255, 247, 219, 235),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black, spreadRadius: 2)
                                    ]),
                              )
                            : Image.asset(widget.guessed_cards[4]),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 200),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          'Score: ${widget.score}',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 500,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Image.asset(
                          'assets/anya_back.png',
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 30, horizontal: 0.15),
                        height: 370,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Image.asset(
                          widget.randomCard[0],
                        ),
                      ),
                      SizedBox(
                        width: 600,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          List test_card = CardValue().getRandom();
                          test(test_card[1] < widget.randomCard[1], test_card);
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.lightBlue,
                            onPrimary: Colors.white,
                            fixedSize: Size(100, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0))),
                        child: Text('LOWER'),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          List test_card = CardValue().getRandom();
                          test(test_card[1] >= widget.randomCard[1], test_card);
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.lightBlue,
                            onPrimary: Colors.white,
                            fixedSize: Size(100, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0))),
                        child: Text('HIGHER'),
                      ),
                      SizedBox(
                        height: 250,
                        width: 200,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        CustomPopUp()
      ],
    );
  }
}
