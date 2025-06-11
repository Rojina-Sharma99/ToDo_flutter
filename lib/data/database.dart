import 'package:hive_flutter/hive_flutter.dart';

class ToDODataBase {
  List toDoList = [];

//reference our box
  final _myBox = Hive.box('mybox');

  //run this method if this is the first time ever opening the app
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exersise", false],
    ];
  }

  //load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDataBase() {
    _myBox.put("ToDOLIST", toDoList);
  }
}
