import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:planpad/models/notemodels.dart';

class NoteDatabase extends ChangeNotifier{

  static late Isar isar;

 //  I N I T I A  L I Z E - D A T A B A S E 

 static Future<void> initialize() async{
  final dir = await getApplicationDocumentsDirectory();
  isar = await Isar.open(
    [NoteSchema],
     directory: dir.path);
 }

 // list of notes
 final List<Note> currentNotes = [];

 // CREATE
 Future addNote(String textFromUSer) async{

  //create a new note 
  final newNote = Note()..text = textFromUSer;

  // save to db
  await isar.writeTxn(() => isar.notes.put(newNote));

  // re - read from db
  fetchNotes();

  

 }

 // READ 
 Future<void> fetchNotes() async {
  List<Note> fetchNotes = await isar.notes.where().findAll();
  currentNotes.clear();
  currentNotes.addAll(fetchNotes);

  notifyListeners();
 }

 // UPDATE 
Future<void> updateNote(int id, String newText) async{
  final existingNote = await isar.notes.get(id);
  if (existingNote != null){
    existingNote.text = newText;
    await isar.writeTxn(() => isar.notes.put(existingNote)); 
    await fetchNotes();
 
  }
}
 // DELETE
 Future<void> deleteNote(int id) async {
  await isar.writeTxn(() => isar.notes.delete(id));
  await fetchNotes();

 }
}