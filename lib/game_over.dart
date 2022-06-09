import 'package:flutter/material.dart';
import 'package:hi_lo/main_page.dart';

class GameOver extends StatefulWidget {
  @override
  _GameOverState createState() => _GameOverState();
}

class _GameOverState extends State<GameOver> {
  List<String> guessed_cards = ['', '', '', '', ''];
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/end2.gif'))),
      ),
      Container(
        alignment: Alignment.center,
        child: Image.asset(
          'assets/over.png',
        ),
      ),
      Container(
          alignment: Alignment.bottomCenter,
          child: Image.asset(
            'assets/Forgers_end.png',
            height: 200,
            width: 900,
          )),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MainPage(guessed_cards)));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 241, 144, 152),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Play Again? ",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 200),
          ],
        ),
      ),
    ]);
  }
}

class FadeRoute extends PageRouteBuilder {
  final Widget page;
  FadeRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
