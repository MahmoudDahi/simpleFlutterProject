import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandle;
  final String answerText;

  Answer(this.selectHandle, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(
          answerText,
          style: const TextStyle(color: Colors.white),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
        onPressed: selectHandle,
      ),
    );
  }
}
