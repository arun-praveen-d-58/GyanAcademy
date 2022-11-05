import 'package:flutter/material.dart';

class MobLearningScreen3 extends StatefulWidget {
  const MobLearningScreen3({Key? key}) : super(key: key);

  @override
  State<MobLearningScreen3> createState() => _MobLearningScreen3State();
}

class _MobLearningScreen3State extends State<MobLearningScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
       // child : Text("Learning Path page 3"),
        child : Text("about page"),
      ),
    );
  }
}