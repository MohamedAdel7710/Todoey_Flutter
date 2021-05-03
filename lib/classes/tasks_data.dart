import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _taskslist = [];

  UnmodifiableListView<Task> get taskslist {
    return UnmodifiableListView(_taskslist);
  }

  int get taskCount {
    return _taskslist.length;
  }

  void addNewTask(String taskTitle) {
    final task = Task(name: taskTitle);
    _taskslist.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleTask();
    notifyListeners();
  }

  void deleteTak(Task task) {
    _taskslist.remove(task);
    notifyListeners();
  }
}
