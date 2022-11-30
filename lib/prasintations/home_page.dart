import 'package:animation_sample/prasintations/tasks/task1.dart';
import 'package:animation_sample/prasintations/tasks/task2.dart';
import 'package:animation_sample/prasintations/tasks/task3.dart';
import 'package:animation_sample/prasintations/tasks/task4.dart';
import 'package:animation_sample/prasintations/tasks/task_8.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Flutter animations",style: TextStyle(color: Colors.black,fontSize: 26),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: const Text("Task 1",style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>FirstTask()));
              },
            ),
            ListTile(
              title: const Text("Task 2",style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>SecondTask()));
              },
            ),
            ListTile(
              title: const Text("Task 3",style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>ThridTask()));
              },
            ),
            ListTile(
              title: const Text("Task 4",style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>FourthTask()));
              },
            ),
            ListTile(
              title: const Text("Task 8",style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>LastTask()));
              },
            ),
          ],
        ),
      ),
    );
  }
}