import 'package:flutter/material.dart';

//Answer Class
class Answer extends StatelessWidget {
// final Function to out in onPressed function below
  final Function selectHandler;
  final String answerText;
//Constructor of the class having selectHandler as a parameter
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
