import 'package:flutter/material.dart';
import 'package:login/data/questions.dart';
import 'package:login/question.dart';
import 'package:login/results.dart';
import 'package:login/startscreen.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'startscreen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questionscreen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'resultscreen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = []; // ✅ Reset selected answers when restarting
      activeScreen = 'startscreen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget;

    if (activeScreen == 'startscreen') {
      screenWidget = StartScreen(switchScreen);
    } else if (activeScreen == 'questionscreen') {
      screenWidget = Question(onselectedanswer: chooseAnswer);
    } else {
      screenWidget = Results(answers: selectedAnswers, onRestart: restartQuiz);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget, // ✅ Correctly displaying the active screen
        ),
      ),
    );
  }
}
