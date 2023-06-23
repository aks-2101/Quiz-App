import 'package:demo/answer_button.dart';
import 'package:demo/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:demo/questions_screen.dart';

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
    final currentQuestion = question[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
            currentQuestion.text,
            style:const  TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          AnswerButton(answerText: currentQuestion.answer[0], onTap: () {},),
          AnswerButton(answerText: currentQuestion.answer[1], onTap: () {},),
          AnswerButton(answerText: currentQuestion.answer[2], onTap: () {},),
          AnswerButton(answerText: currentQuestion.answer[3], onTap: () {},),
        ],
      ),
    );
  }
}
