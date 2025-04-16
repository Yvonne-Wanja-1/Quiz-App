import 'package:flutter/material.dart';
import 'package:login/data/questions.dart';
import 'summary.dart';

class Results extends StatelessWidget {
  final List<String> answers;
  final VoidCallback onRestart;

  const Results({required this.answers, required this.onRestart, Key? key})
    : super(key: key);

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < answers.length; i++) {
      // Fixed loop condition
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer':
            questions[i].answers[0], // Fixed correct answer indexing
        'user_answer': answers[i], // Fixed wrong variable name
      });
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
            Text(
              'Quiz Completed!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Summary(getSummaryData()),
            SizedBox(height: 30),
            TextButton(
              onPressed: onRestart, // Fixed: Calls the restart function
              child: Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
