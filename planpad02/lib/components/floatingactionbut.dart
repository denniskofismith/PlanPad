import 'package:flutter/material.dart';
import 'package:planpad02/models/notesdb.dart';

class MyFloatingAction extends StatefulWidget {
  const MyFloatingAction({super.key});

  @override
  State<MyFloatingAction> createState() => _MyFloatingActionButtonState();
}

class _MyFloatingActionButtonState extends State<MyFloatingAction> {
  final mycontroller = TextEditingController();
  void onPressedFunc(){

    showDialog(context: context, builder:(BuildContext context){

        return AlertDialog(
          title: Text("Add a New Note"),
          content: TextField(controller: mycontroller,),
          actions: [
          TextButton(
              child: Text("ADD"),
            onPressed: (){
              setState(() {
                notsdb.add(mycontroller.text);
                
                mycontroller.clear();
              });
              Navigator.pop(context);
              
            },

            ),
          TextButton(
              child: Text("CANCEL"),
            onPressed: () => Navigator.pop(context),
            ),
        ] );
    } 
    );

  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressedFunc,

      child: Icon(Icons.add),

      );
  }
}