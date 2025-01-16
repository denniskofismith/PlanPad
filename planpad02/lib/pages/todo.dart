import 'package:flutter/material.dart';
import 'package:planpad02/components/mydrawer.dart';



class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Center(child: Text("Todo")),
      actions: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: IconButton(icon:Icon(Icons.note_alt_outlined),onPressed: () {
            Navigator.pushNamed(context, '/notes');
          },),
        )
        ],
    ),
    drawer: MyDrawer(),
    );
  }
}