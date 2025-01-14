import 'package:flutter/material.dart';
import 'package:planpad/components/floatingactionbutton.dart';
import 'package:planpad/models/notesdatabase.dart';
import 'package:provider/provider.dart';

class TOdoPage extends StatelessWidget {
  const TOdoPage({super.key});

  // creating a todo list

   void createTodo(BuildContext context){

    // text Controller
    final textController = TextEditingController();
    showDialog(
      context: context, builder: (context) => AlertDialog(
         content:TextField(controller:  textController,), 
         actions: [
          MaterialButton(onPressed: (){
            context.read<NoteDatabase>().addNote(textController.text);
            Navigator.pop(context);
          })
         ],
      ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TodoList')),
      floatingActionButton: MyFloatingActionButton(onPressed: () => createTodo(context)),
    );
  }
}