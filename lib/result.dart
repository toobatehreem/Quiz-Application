import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result({this.resultScore, this.resetHandler});

  String get resultPhrase {
    String resultText;
    if (resultScore >= 8 && resultScore <= 10) {
      resultText = 'You are pro in python! \nYour score is $resultScore';
    } else if (resultScore <= 7 && resultScore >= 4) {
      resultText = 'You are good at python! \nYour score is $resultScore';
    } else {
      resultText = 'You are a beginner in python! \nYour score is $resultScore';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 0.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              resultPhrase,
              style: TextStyle(
                  fontFamily: 'Times New Roman',
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            FlatButton(
              child: Text(
                'Restart Quiz',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Times New Roman",
                    fontSize: 25.0),
              ),
              onPressed: resetHandler,
              textColor: Colors.purpleAccent,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.purple,
                  width: 2,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
