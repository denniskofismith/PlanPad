import 'package:flutter/material.dart';



// ignore: must_be_immutable
class MyAppBar extends StatelessWidget {
  String title;
   MyAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title:  Text(title),
    );
  }
}