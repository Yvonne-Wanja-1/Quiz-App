import 'package:flutter/material.dart';
import 'package:login/answer_button.dart';
import 'package:login/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatefulWidget {
  const Question({super.key, required this.onselectedanswer});

  final void Function(String answer) onselectedanswer;

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  var currentQuestionIndex = 0; // ✅ Renamed to avoid conflicts

  void answerquestion(String selectedanswer) {
    widget.onselectedanswer(selectedanswer);
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++; // ✅ Moves to the next question
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion =
        questions[currentQuestionIndex]; // ✅ Uses the renamed variable

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 236, 164, 164),
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),

            // ✅ Uses correct answer list
            ...currentQuestion.getshuffle().map((answer) {
              return AnswerButton(
                answer: answer,
                onTap: () {
                  answerquestion(answer);
                },
              ); // ✅ Calls `answerquestion`
            }),
          ],
        ),
      ),
    );
  }
}
