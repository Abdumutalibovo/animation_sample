import 'package:flutter/material.dart';

class FirstTask extends StatefulWidget {
  const FirstTask({Key? key}) : super(key: key);

  @override
  State<FirstTask> createState() => _FirstTaskState();
}
class _FirstTaskState extends State<FirstTask> with  SingleTickerProviderStateMixin{
  late AnimationController controller;
  late Animation colorAnimation;
  late Animation textAnimation;
  late Animation secondcolorAnimation;
  bool isSelected=true;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: const Duration(seconds: 3));
    colorAnimation = ColorTween(begin: Colors.orange, end: Colors.green).animate(controller);
    secondcolorAnimation=ColorTween(begin: Colors.green,end: Colors.orange).animate(controller);
    controller.addListener(() {
      setState(() {});
    });
    controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: isSelected?colorAnimation.value:secondcolorAnimation.value,
          ),
          child: Center(child: Text(isSelected?"This is widget":"This is second widget",style: TextStyle(fontSize: 30),)),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 120,bottom: 50),
        child: TextButton(
          onPressed: (){
            setState((){
              isSelected=!isSelected;
            });
          }, child: Text("Click me",style: TextStyle(fontSize: 30),),
        ),
      ),
    );
  }
}
