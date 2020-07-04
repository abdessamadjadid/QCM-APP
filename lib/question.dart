import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // final String Variable questionText
  final String questionText;
//Constructor if the class having the string variable as parameter
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
