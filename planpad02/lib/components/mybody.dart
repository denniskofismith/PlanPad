import 'package:flutter/material.dart';
import 'package:planpad02/models/notesdb.dart';


class MyBody extends StatefulWidget {
  const MyBody({super.key});

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notsdb.length,
      itemBuilder: (context,index){

        return ListTile(
          title: Text(notsdb[index]),
          trailing: Row(
            children: [
              Icon(Icons.edit),
              Icon(Icons.delete),
            ],
          ),
        );
      }
      );
  }
}