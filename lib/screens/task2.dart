import 'package:flutter/material.dart';

class SecondTask extends StatefulWidget {
  const SecondTask({Key? key}) : super(key: key);
  @override
  State<SecondTask> createState() => _SecondTaskState();
}

class _SecondTaskState extends State<SecondTask> {
  double myRight=150.0;
  double myTop=300.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              AnimatedPositioned(
                  right: myRight,
                  top: myTop,
                  duration: const  Duration(seconds: 1),
                  child: Container(
                    width: 90,
                    height: 90,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                    ),
                  )),
              Positioned(
                bottom: 50,
                left: 100,
                child: SizedBox(
                  width: 200,
                  child: Column(
                    children: [
                      Container(
                        child: Center(
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  myTop-=40;
                                });
                              }, icon: Icon(Icons.arrow_drop_up,size: 30,)),
                        ),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  myRight+=40;
                                });
                              },
                              icon: Icon(Icons.arrow_drop_down_sharp,size: 30,),
                            ),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          Container(
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  myRight-=40;
                                });
                              },
                              icon: Icon(Icons.arrow_right,size: 30,),
                            ),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                myTop+=40;
                              });
                            },
                          icon: Icon(Icons.arrow_drop_down_sharp,size: 30,),
                        ),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}