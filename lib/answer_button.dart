import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key,required this.answerText,required this.onTap});

  final String answerText;
  final void Function() onTap;
  @override
  Widget build(context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 60, vertical: 10),
          backgroundColor:const Color.fromARGB(255, 68, 12, 111),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
        ),
        onPressed: onTap,
        child: Text(answerText, textAlign: TextAlign.center,));
  }
}
