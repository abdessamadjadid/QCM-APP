import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final int resultScore;

  final Function resetHandler;

  Result(this.resultScore,this.resetHandler);

  String get resultPhrase
  {
    
    String resultText;

    if(resultScore <= 8){
       resultText = 'Woow!! You are Awesome';
    }
    else if (resultScore <= 12){
      resultText = 'You are really different!';
    }

        else if (resultScore <= 16){
      resultText = 'Whaaaaaaat !';
    }
    else{
      resultText = 'Damn you should visit a doctor';
    }

    return resultText;
    
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(child: Text('Restart Quiz!!') , textColor: Colors.blue, onPressed: resetHandler,)
        ],
      ),
    );
  }
}
