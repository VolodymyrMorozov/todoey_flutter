import 'package:flutter/foundation.dart';
import 'package:todoeyflutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  void addTask(String name) {
    _tasks.add(Task(name: name));
    notifyListeners();
  }

  Task getTaskByIndex(index) => index < _tasks.length ? _tasks[index] : null;

  int get taskCount => _tasks.length;

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
