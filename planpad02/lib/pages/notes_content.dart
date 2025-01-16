// ignore_for_file: unnecessary_nullable_for_final_variable_declarations

import 'package:flutter/material.dart';
import 'package:planpad02/models/notesdb.dart';

class NotesContentPage extends StatelessWidget {
 
  const NotesContentPage({super.key});

  @override
  Widget build(BuildContext context) {
     final  noteContentTitle = ModalRoute.of(context)?.settings.arguments as int;
    return Scaffold(

      body: Expanded(
        child: Column(
          children: [
            Text(notsdb[noteContentTitle]),

          ],
        )
      ),

    );
  }
}