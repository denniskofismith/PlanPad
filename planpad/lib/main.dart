import 'package:flutter/material.dart';
import 'package:planpad/models/notesdatabase.dart';
import 'package:planpad/models/tododatabase.dart';
import 'package:planpad/pages/note_page.dart';
import 'package:provider/provider.dart';

void main() async {
  // initialize note isar database
  WidgetsFlutterBinding.ensureInitialized();
  await NoteDatabase.initialize();

  WidgetsFlutterBinding.ensureInitialized();
  await TodoDatabase.initialize();

  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => NoteDatabase()),
      ChangeNotifierProvider(create: (context) => TodoDatabase())
    ],
    child: const MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  
      home: NotePage(),
    );
  }
}
