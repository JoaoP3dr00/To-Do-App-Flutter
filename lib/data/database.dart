import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('myBox');

  // run this method if this is the first time ever opening this app
  void createInitialData(){
    toDoList = [["Make Tutorial", false], ["Do Exercise", false]];
  }

  // load the data from databse
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  // update the databse
  void updateDataBase(){
    _myBox.put("TODOLIST", toDoList);
  }
}
