// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';


class MyListViewBuilder extends StatelessWidget {
   final dynamic currentNotes;
   final void Function()? onTap;
   const MyListViewBuilder({super.key,required this.currentNotes,this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: currentNotes.length,
      itemBuilder: (context,index){
        final note = currentNotes[index];

        return ListTile(
            title: Text(note.title),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                //edit button 

                // delete button 
              ],
            ),
            onTap: onTap,
        );
      }
      );
  }
}