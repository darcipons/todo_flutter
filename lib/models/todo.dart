class Task {
  final String name;
  final String description;
  bool isDone;

  Task({this.name, this.description, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
