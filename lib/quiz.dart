import 'package:flutter/material.dart';
import 'package:quizapp/questions_screen.dart';
import 'package:quizapp/quiz_content.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override 
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
   Widget screenWidget = QuizContent (switchScreen);
    
    if (activeScreen == 'questions-screen') { 
       screenWidget = const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 97, 51, 175),
                Color.fromARGB(255, 75, 35, 145),
              ],
            ),
          ),
          child:
              activeScreen == 'start-screen'
                  ? QuizContent(switchScreen)
                  : const QuestionsScreen(),
        ),
      ),
    );
  }
}
