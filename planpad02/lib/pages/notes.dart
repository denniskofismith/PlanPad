import 'package:flutter/material.dart';
import 'package:planpad02/components/floatingactionbut.dart';
import 'package:planpad02/components/mybody.dart';
import 'package:planpad02/components/mydrawer.dart';



class NotePage extends StatelessWidget {
  const NotePage({super.key});


  void onPressedFloating(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Center(child: Text("Notes")),
      actions: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: IconButton(icon: Icon(Icons.calendar_month),onPressed: (){
            Navigator.pushNamed(context, '/todo');

          },),
        )
        ],
    ),
    drawer: MyDrawer(),
    body: MyBody(),
    floatingActionButton: MyFloatingAction(),

    );
  }
}