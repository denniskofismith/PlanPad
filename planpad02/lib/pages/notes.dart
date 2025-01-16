import 'package:flutter/material.dart';
import 'package:planpad02/components/floatingactionbut.dart';
import 'package:planpad02/components/mydrawer.dart';
import 'package:planpad02/models/notesdb.dart';



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
    floatingActionButton: MyFloatingAction(),
    // body: MyBody(),
  body: Expanded(
    child: ListView.builder(
      itemCount: notsdb.length,
      itemBuilder: (BuildContext context,index){
      
      return Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20)
        ),
        child: ListTile(
          onTap: () => Navigator.pushNamed(context, '/notes_content',arguments: index),
          
          title: Text(notsdb[index],style: TextStyle(color: Theme.of(context).colorScheme.primary,fontWeight: FontWeight.bold),),
          tileColor: Theme.of(context).colorScheme.secondary,
          textColor: Theme.of(context).colorScheme.primary,
          subtitle: Text("My Subtille "),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(onPressed: null, icon: Icon(Icons.edit,color: Theme.of(context).colorScheme.primary,)),
              IconButton(onPressed: null, icon: Icon(Icons.delete,color: Theme.of(context).colorScheme.primary,)),
            ],
          ),
        ),
      );
    
      }
  )));
  }
}