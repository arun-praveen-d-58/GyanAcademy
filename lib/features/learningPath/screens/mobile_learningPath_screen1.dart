import 'package:flutter/material.dart';

class MobLearningScreen1 extends StatefulWidget {
  const MobLearningScreen1({Key? key}) : super(key: key);

  @override
  State<MobLearningScreen1> createState() => _MobLearningScreen1State();
}

class _MobLearningScreen1State extends State<MobLearningScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child : Text("Learning Path page 1"),
      ),
    );
  }
}
