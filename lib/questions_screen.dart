import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('The question is ...', 
          style: TextStyle(
            color: Colors.white
            ),
            ),
          const SizedBox(height: 30),
          
               ElevatedButton(
            onPressed: () {},
            child: Text(
              'Answer 2'
              ),
              ),
               ElevatedButton(
            onPressed: () {}, 
            child: Text(
              'Answer 3'
              ,)
              ),
              
        ],
      ),
    );
  }
}
