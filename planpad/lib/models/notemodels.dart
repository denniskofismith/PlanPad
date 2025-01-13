import 'package:isar/isar.dart';

//this line is needed to generate file

part 'notemodels.g.dart';

@collection
class Note {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  late String text;


}