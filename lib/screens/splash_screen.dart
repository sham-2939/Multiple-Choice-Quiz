import 'package:flutter/material.dart';
import 'package:quizapp/components/quiz_brain.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/images/splash_screen.png'),
                    fit: BoxFit.cover,
                  ),
                  Spacer(),
                  Container(

                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                          side: BorderSide(
                              color: Color(0xFFB55E28),
                              width: 3.0
                          )
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => QuizBrain(),
                        ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Start Quiz',
                          style: TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFB55E28),
                          ),
                        ),
                      ),
                      color: Color(0xFFFFD544),
                      elevation: 12.0,
                    ),
                  ),
                ],
              ),
            )
        )
    );
  }
}




