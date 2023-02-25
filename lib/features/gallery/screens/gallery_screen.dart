import 'package:flutter/material.dart';

class GalleryScreen extends StatefulWidget {
  static const String routeName = '/gallery-screen';
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Gallery Screen")
      ),
    );
  }
}
