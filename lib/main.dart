
import 'package:animation_sample/screens/task1.dart';
import 'package:animation_sample/screens/task2.dart';
import 'package:animation_sample/screens/task3.dart';
import 'package:animation_sample/screens/task4.dart';
import 'package:animation_sample/screens/task_8.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter animation',
      home: const FirstTask(),
    );
  }
}
