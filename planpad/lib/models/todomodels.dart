
import 'package:isar/isar.dart';

part 'todomodels.g.dart';

@collection
class ToDo{
  Id id = Isar.autoIncrement;

  late String title;

  late bool isDone;

  late String summary;

  late DateTime dateTime;
}