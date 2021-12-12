import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandle;
  final String answerText;

  const Answer(this.selectHandle, this.answerText, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
