import 'dart:math';
import 'package:flutter/material.dart';


class TaskFour extends StatefulWidget {
  const TaskFour({Key? key}) : super(key: key);

  @override
  State<TaskFour> createState() => _TaskFourState();
}

class _TaskFourState extends State<TaskFour> with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    animation = Tween<double>(begin: 2*pi, end: 0).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.linear,
      reverseCurve: Curves.bounceIn,
    ))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {});
    animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transform.rotate"),
      ),
      body: Center(
        child: Transform.rotate(
          angle: animation.value,
          child:  Container(
            width: 150,
            height: 150,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}