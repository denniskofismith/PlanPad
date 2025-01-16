import 'package:flutter/material.dart';
import 'package:planpad02/pages/notes.dart';
import 'package:planpad02/pages/todo.dart';
import 'package:planpad02/theme/lightmode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightmode,
      debugShowCheckedModeBanner: false,
      routes: {
        '/todo': (context) => TodoPage(),
        '/notes': (context) => NotePage(),
      },
      home: NotePage(),
    );
  }
}


 