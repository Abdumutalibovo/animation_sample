import 'package:flutter/material.dart';

class TaskOne extends StatefulWidget {
  const TaskOne({Key? key}) : super(key: key);

  @override
  State<TaskOne> createState() => _TaskOneState();
}
class _TaskOneState extends State<TaskOne> with  SingleTickerProviderStateMixin{
  late AnimationController controller;
  late Animation colorAnimation;
  late Animation textAnimation;
  bool isSelected=false;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: const Duration(seconds: 3));
    colorAnimation = ColorTween(begin: Colors.orange, end: Colors.green).animate(controller);
    controller.addListener(() {
      setState(() {
      });
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Demo"),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: isSelected?colorAnimation.value:Colors.orange,
          ),
          child: Center(child: Text(isSelected?"This is widget":"This is second widget",style: TextStyle(fontSize: 30),)),
        ),
      ),
      floatingActionButton: TextButton(
        onPressed: (){
          isSelected=!isSelected;
        }, child: Text("Click me",style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
