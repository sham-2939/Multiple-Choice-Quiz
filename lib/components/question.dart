import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question({this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Card(
        color: Color(0xFFFFd544),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            questionText,
            style: TextStyle(
              fontSize: 32.0,
              color: Color(0xFFB55E28),
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}