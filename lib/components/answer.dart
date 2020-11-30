import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Color(0xFFB55E28),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            answerText,
            style: TextStyle(
                color: Color(0xFFFFD544),
                fontSize: 22.0,
                fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.center,
          ),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
