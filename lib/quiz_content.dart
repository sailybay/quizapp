import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizContent extends StatelessWidget {
  const QuizContent( this.startQuiz,{ super.key});

  final void Function () startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min, 
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              'assets/quiz-logo.png', width: 250
              ),
          ),
          SizedBox(height: 80),
          Text(
            "Learn Flutter the fun way!",
            style: GoogleFonts.lato(color: const Color.fromARGB(255, 203, 157, 224), fontSize: 24.0
            ),
          ),
          const SizedBox(height: 25),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white
              ),
            icon: Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start Quiz',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              startQuiz();
            },
          ),
        ],
      ),
    );
  }
}
