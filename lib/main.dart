import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
// createState Method for returning the State Class herited by StatefulWidget
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// MyAppState Class herited from State Class Based on StatefulWidget
class _MyAppState extends State<MyApp> {
  //initialized variable

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'Text': 'Black', 'score': 1},
        {'Text': 'Red', 'score': 3},
        {'Text': 'Black', 'score': 5},
        {'Text': 'White', 'score': 8}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'Text': 'Rabbit', 'score': 15},
        {'Text': 'Snake', 'score': 10},
        {'Text': 'Elephant', 'score': 5},
        {'Text': 'Lion', 'score': 2}
      ]
    },
    {
      'questionText': 'Who\'s your favorite instructors?',
      'answers': [
        {'Text': 'Max', 'score': 10},
        {'Text': 'Max', 'score': 10},
        {'Text': 'Max', 'score': 10},
        {'Text': 'Max', 'score': 10}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){

    setState(() {
    _totalScore = 0;
    _questionIndex = 0;
    });

  }

// void Method for increament questionIndex variable
  void _answerQuestion(int score) {

    _totalScore += score;

//SetState Method used for internal state Changes => State means simply Data or infos used in your App
    setState(() {
      _questionIndex = _questionIndex + 2;
    });

    if (_questionIndex < _questions.length) {
      print("we have more questions");
    } else {
      print("the QCM finish");
    }

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
