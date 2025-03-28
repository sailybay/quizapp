import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/questions_screen.dart';
import 'package:quizapp/quiz_content.dart';
import 'package:quizapp/result_screen.dart';



class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override 
  State<Quiz> createState(){
     return _QuizState();
  } 
}

class _QuizState extends State<Quiz> {
  List <String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer (String answer) {
   selectedAnswers.add(answer);

   if (selectedAnswers.length == questions.length) {
    setState(() {
    selectedAnswers = [];
     activeScreen = 'result-screen';
     });
   }   
  }

  @override
  Widget build(context) {
   Widget screenWidget = QuizContent (switchScreen);

    if (activeScreen == 'questions-screen') { 
       screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
        );
    }

  if (activeScreen == 'result-screen') {
    screenWidget =  ResultScreen(chosenAnswers: selectedAnswers,);
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
          child: screenWidget
            
        ),
      ),
    );
  }
}
