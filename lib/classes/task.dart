class Task {
  String name;
  bool isDone;

  Task({this.isDone = false, this.name});

  void toggleTask() {
    isDone = !isDone;
  }
}
