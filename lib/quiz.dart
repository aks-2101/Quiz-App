import 'package:demo/questions_screen.dart';
import 'package:flutter/material.dart';
import 'start_screen.dart';


class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State <Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State <Quiz> {
  
  Widget activeScreen = const StartScreen();
  void switchScreen(){
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context){
    return  MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 34, 13, 71),
                Color.fromARGB(255, 25, 4, 46),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: activeScreen,
      ),
    );
  }
}