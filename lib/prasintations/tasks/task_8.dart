import 'package:flutter/material.dart';
import 'dart:math';
import '../../companents/constants/images.dart';

class LastTask extends StatefulWidget {
  const LastTask({Key? key}) : super(key: key);

  @override
  State<LastTask> createState() => _LastTaskState();
}

class _LastTaskState extends State<LastTask>
    with SingleTickerProviderStateMixin {
  late AnimationController animController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 100),
    );
    animation = Tween<double>(begin: 0, end: pi * 2)
        .animate(animController)
      ..addListener(() {
        setState(() {});
      })..addStatusListener((status) {
        animController.repeat();
      });

    animController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: SizedBox(
            height: 100,
            width: 400,
            child: Stack(
              children: [
                Center(
                  child: Container(
                    height: 200,
                    width: 300,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppImages.car_image),
                            fit: BoxFit.fitWidth)),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 68,
                  child: Transform.rotate(
                    angle: animController.value,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(AppImages.wheel_image),
                              fit: BoxFit.fitWidth)),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -2,
                  right: 88,
                  child: Transform.rotate(
                    angle: animController.value,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(AppImages.wheel_image),
                              fit: BoxFit.fitWidth)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}