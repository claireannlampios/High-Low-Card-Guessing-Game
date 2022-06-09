import 'package:hi_lo/main_page.dart';
import 'package:hi_lo/widgets/custom_popup.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  List<String> guessed_cards = ['', '', '', '', ''];
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/anyaforger.png'))),
        ),
      ),
      Center(
        child: Column(children: <Widget>[
          Image.asset('assets/Startstart.png', height: 300, width: 300),
        ]),
      ),
      Container(
        child: Align(
          alignment: Alignment.center,
          child: Text(" High-Low Game ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold)),
        ),
      ),
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
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(24)),
                child: Text(
                  "Play Now ",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
            ),
            SizedBox(height: 200),
          ],
        ),
      ),
      CustomPopUp()
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
