import 'package:demo/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 34, 13, 71),
                Color.fromARGB(255, 25, 4, 46),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: const StartScreen()),
      ),
    ),
  );
}
