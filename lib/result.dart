import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int scoreResult;
  final Function restartHandle;

  const Result({Key key, this.scoreResult, this.restartHandle})
      : super(key: key);

  String get resultPhrase {
    if (scoreResult < 2) return 'You are so bad';
    if (scoreResult < 4) return 'You are so excited';
    if (scoreResult >= 4) return 'You Are Awesome';
    return "";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: restartHandle,
            child: const Text('Restart Quiz!'),
          ),
        ],
      ),
    );
  }
}
