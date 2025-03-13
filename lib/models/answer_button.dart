import 'package:flutter/material.dart';
import 'package:quizapp/questions_screen.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton ({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
            onPressed: () {}, 
            style: ElevatedButton.styleFrom(),
            child: Text(
              'Answer 1',
              ),
              );
  }
}