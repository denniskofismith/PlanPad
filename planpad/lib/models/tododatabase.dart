
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:planpad/models/notemodels.dart';
import 'package:planpad/models/todomodels.dart';

class TodoDatabase extends ChangeNotifier{
  static late Isar isar;
  // initialize 
  static Future<void> initialize() async{
    final dir = await getApplicationDocumentsDirectory();

    isar = await Isar.open([ToDoSchema], directory: dir.path);

  }
  // list of todo's
  List<ToDo> currentTodo = [];

  // create
  Future<void> addTodo(String fromUser,bool isDone,String summary, DateTime dateTime) async {
   final newTodo = ToDo()..title = fromUser ..isDone = isDone ..summary = summary ..dateTime = dateTime;

   await isar.writeTxn(() => isar.toDos.put(newTodo));

   await fetchTodo();
   
 } 

  // read
    Future<void> fetchTodo() async{
    List <ToDo> fetchTodos = await isar.toDos.where(sort: Sort.desc).findAll();
    currentTodo.clear();
    currentTodo.addAll(fetchTodos);
    notifyListeners();
   }

  // wpdate

  Future<void> updateTod(int id, String newText,bool newisDone,String newsummary, DateTime newdateTime) async{
    final existingTodo = await isar.toDos.get(id);

    if(existingTodo != null ){
      existingTodo.title = newText;
      existingTodo.isDone = newisDone;
      existingTodo.summary = newsummary;
      existingTodo.dateTime = newdateTime;

      await isar.writeTxn(() => isar.toDos.put(existingTodo));

      await fetchTodo();
    }

  }


  // delete
  Future<void> deleteTodo(int id) async {
  await isar.writeTxn(() => isar.notes.delete(id));
  await fetchTodo();
 }
}