import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<_MyApp> {
  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 2},
        {'text': 'Red', 'score': 4},
        {'text': 'Green', 'score': 1},
        {'text': 'White', 'score': 5}
      ]
    },
    {
      'questionText': 'What\'s your favorite Animal?',
      'answers': [
        {'text': 'Elephant', 'score': 3},
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Lion', 'score': 2},
        {'text': 'Snake', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s the sweet food made by bees?',
      'answers': [
        {'text': 'Flower', 'score': 0},
        {'text': 'Honey', 'score': 4},
        {'text': 'Banana', 'score': 0},
        {'text': 'Rich', 'score': 0}
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('first App'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                questions: questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(scoreResult: _totalScore, restartHandle: _restartQuiz),
      ),
    );
  }
}
