import 'package:flutter/material.dart';
import 'package:planpad/components/floatingactionbutton.dart';
import 'package:planpad/components/listviewbuilder.dart';
import 'package:planpad/models/notemodels.dart';
import 'package:planpad/models/notesdatabase.dart';
import 'package:provider/provider.dart';


class NotePage extends StatefulWidget {
  const NotePage({super.key});

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
      // text controller
    final textController = TextEditingController();

    @override
  void initState() {
       super.initState();

    readNotes(context);
  }
  // create a note 
  void createNote(BuildContext context){

    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        content: TextField(
          controller: textController,
        ),
        actions: [
          MaterialButton(onPressed: (){
            context.read<NoteDatabase>().addNote(textController.text);

            textController.clear();
            
            Navigator.pop(context);
          },
          child: Text("Create"),)
        ],
      ));

  }

// read notes
void readNotes(BuildContext context){
    context.read<NoteDatabase>().fetchNotes();
}

// update a note
  @override
  Widget build(BuildContext context) {
    // access database
    final noteDatabase = context.watch<NoteDatabase>();

    // current Notes
    List<Note> currentNotes = noteDatabase.currentNotes;
    return Scaffold(
      appBar: AppBar(title: Text('Notes'),),
      floatingActionButton: MyFloatingActionButton(onPressed: () => createNote(context)),
      body: MyListViewBuilder(currentNotes: currentNotes),
    );
  }
}