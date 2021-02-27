import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
import './widgets/image_banner.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText':
          'What is a correct syntax to output "Hello World" in Python?',
      'answers': [
        {'text': ' p(\'Hello World\')', 'score': 0},
        {'text': 'echo(\'Hello World\')', 'score': 0},
        {'text': 'print(\'Hello World\')', 'score': 1},
        {'text': 'printf(\'Hello World\')', 'score': 0},
      ],
    },
    {
      'questionText': 'How do you insert COMMENTS in Python code?',
      'answers': [
        {'text': '/*This is a comment*/', 'score': 0},
        {'text': ' #This is a comment', 'score': 1},
        {'text': ' "This is a comment"', 'score': 0},
        {'text': ' //This is a comment', 'score': 0},
      ],
    },
    {
      'questionText': 'Which one is NOT a legal variable name?',
      'answers': [
        {'text': 'my_var', 'score': 0},
        {'text': 'Myvar', 'score': 0},
        {'text': '_myvar', 'score': 0},
        {'text': 'my-var', 'score': 1},
      ],
    },
    {
      'questionText': 'How do you create a variable with the numeric value 5?',
      'answers': [
        {'text': 'x = 5', 'score': 1},
        {'text': 'int x = 5', 'score': 0},
        {'text': 'Both are correct', 'score': 0},
        {'text': 'None is correct', 'score': 0},
      ],
    },
    {
      'questionText':
          'How do you create a variable with the floating number 2.8?',
      'answers': [
        {'text': 'x = 2.8', 'score': 0},
        {'text': 'x = float(2.8)', 'score': 0},
        {'text': 'Both are correct', 'score': 1},
        {'text': 'None is correct', 'score': 0},
      ],
    },
    {
      'questionText':
          'What is the correct syntax to output the type of a variable or object in Python?',
      'answers': [
        {'text': 'print(typeof(x))', 'score': 0},
        {'text': ' print(typeOf(x))', 'score': 0},
        {'text': ' printf(type(x))', 'score': 0},
        {'text': ' print(type(x))', 'score': 1},
      ],
    },
    {
      'questionText': 'What is the correct way to create a function in Python?',
      'answers': [
        {'text': 'create myFunction()', 'score': 0},
        {'text': 'def myFunction():', 'score': 1},
        {'text': 'def myFunction()', 'score': 0},
        {'text': 'function myFunction()', 'score': 0},
      ],
    },
    {
      'questionText':
          'In Python, a variable must be declared before it is assigned a value:',
      'answers': [
        {'text': 'True', 'score': 0},
        {'text': 'False', 'score': 1},
        {'text': 'Not sure', 'score': 0},
        {'text': 'Neither true nor false', 'score': 0},
      ],
    },
    {
      'questionText':
          'What is a correct syntax to return the first character in a string?',
      'answers': [
        {'text': 'x = "Hello"[0]', 'score': 1},
        {'text': 'x = "Hello".sub(0,1)', 'score': 0},
        {'text': 'x = sub("Hello",0,1)', 'score': 0},
        {'text': 'x = sub("Hello",1,0)', 'score': 0},
      ],
    },
    {
      'questionText':
          'Which method can be used to remove any whitespace from both the beginning and the end of a string?',
      'answers': [
        {'text': 'ptrim()', 'score': 0},
        {'text': 'trim()', 'score': 0},
        {'text': 'len()', 'score': 0},
        {'text': 'strip()', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.purpleAccent),
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Python Quiz Application',
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ImageBanner(assetPath: 'assets/images/pic2.png'),
                  _questionIndex < _questions.length
                      ? Quiz(
                          answerQuestion: _answerQuestion,
                          questionIndex: _questionIndex,
                          questions: _questions)
                      : Result(
                          resultScore: _totalScore, resetHandler: _resetQuiz),
                ]),
          )),
      debugShowCheckedModeBanner: false,
    );
  }
}
