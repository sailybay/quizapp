import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen ({super.key,required this.chosenAnswers,});

 final List <String> chosenAnswers;

 List <Map<String , Object>> getSummaryData() {
  final List<Map<String , Object>> summary = [];

  for (var i=0; i< chosenAnswers.length; i++) {
   summary.add(
    {
    'question-index': 1,
    'question': questions[i].text,
    'correct_answer':questions[i].answers[0],
    'user_answers': chosenAnswers[i]
    },
   );
  }
  return summary;
 }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered X out of Y questions correctly!'),
            SizedBox(height: 30,),
            Text('List of answers and questions ...'),
            SizedBox(height: 30,),
            TextButton(onPressed: () {}, child: const Text('Restart Quiz!'))
          ],
        ),
      ),
    );
  }
}