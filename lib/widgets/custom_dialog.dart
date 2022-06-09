import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      decoration: BoxDecoration(color: Color(0xffdcffcc)),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Info',
                style: TextStyle(fontSize: 30, color: Colors.black54),
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Welcome to High - Low Game!\n\n'
              'The rules are simple:\n\n'
              'You have to guess if the next card is greater than \n\n'
              'or lesser than to the current card.\n\n'
              'If you guess correctly, you win!\n\n'
              'Good luck and have fun!\n\n',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
