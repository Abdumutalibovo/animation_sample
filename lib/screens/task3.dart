import 'package:flutter/material.dart';

class ThridTask extends StatefulWidget {
  const ThridTask({Key? key}) : super(key: key);

  @override
  State<ThridTask> createState() => _ThridTaskState();
}

class _ThridTaskState extends State<ThridTask> with TickerProviderStateMixin{

  late AnimationController animationController;
  late Animation<double> animation;

  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animationController.addListener(() {
      setState(() {});
    });
    animationController.forward();
  }

  List _myWidth=<double>[
    60.0,
    30.0,
    80.0,
    260.0,
    200.0,
    120.0,
    100.0,
    130.0,
    240.0,
    110.0,
    250.0,
    150.0,
  ];

  List _myHeight=<double>[
    60.0,
    260.0,
    160.0,
    80.0,
    200.0,
    260.0,
    300.0,
    240.0,
    110.0,
    50.0,
    180.0,
    220.0,
  ];

  List _myborderRadius=<double>[
    10.0,
    20.0,
    40.0,
    40.0,
    16.0,
    24.0,
    40.0,
    36.0,
    50.0,
    36.0,
    16.0,
    70.0,
  ];

  List _myColors=<Color>[
    Colors.green,
    Colors.indigo,
    Colors.blue,
    Colors.greenAccent,
    Colors.blue,
    Colors.grey,
    Colors.green,
    Colors.green.withOpacity(0.3),
    Colors.blueAccent,
    Colors.pinkAccent,
    Colors.orange,
    Colors.brown,
  ];

  int index=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.linear,
          width: _myWidth[index],
          height: _myHeight[index],
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(_myborderRadius[index]),
            color: _myColors[index],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(index<11){
            setState(() {
              index++;
            });
          }else
            setState(() {
              index=0;
            });
          },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
