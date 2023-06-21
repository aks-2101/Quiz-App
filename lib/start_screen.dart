import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/quiz-logo.png", width: 300,color: const Color.fromARGB(151, 255, 255, 255),),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Want to have a quiz",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text("Start Quiz"),
            icon: const Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}
