import 'package:hi_lo/intro_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) => runApp(hi_lo());

class hi_lo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}
