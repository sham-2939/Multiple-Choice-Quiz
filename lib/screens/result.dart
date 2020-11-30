import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result({this.resultScore, this.resetHandler});

  String get resultPhrase{
    String resultText;
    if(resultScore >= 41){
      resultText = 'You are awesome';
      print(resultScore);
    } else if(resultScore >= 31){
      resultText = 'Pretty Likeable';
      print(resultScore);
    } else if(resultScore >= 21){
      resultText = 'You need to work more';
      print(resultScore);
    } else if(resultScore >= 1){
      resultText = 'This is a poor score';
      print(resultScore);
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 350.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              resultPhrase,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w900,
                color: Color(0xFFB55E28),
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Score ' ' $resultScore',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w900,
                color: Color(0xFFB55E28),
              ),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            MaterialButton(
              height: 60.0,
              elevation: 12.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(
                'Restart Quiz',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              onPressed: resetHandler,
              color: Color(0xFFFFD544),
              textColor: Color(0xFFB55E28),
            )
          ],
        ),
      ),
    );
  }
}
