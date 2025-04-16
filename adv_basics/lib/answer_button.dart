import 'package:flutter/material.dart';


class AnswerButton extends StatelessWidget {
const AnswerButton({super.key, required this.answer, required this.onTap});
  final String answer;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onTap, 
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 40,
      ),
backgroundColor: Colors.blue,
foregroundColor: Colors.white,
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),


)

    ),
    child: Text(answer,textAlign: TextAlign.center,));
  }
}
