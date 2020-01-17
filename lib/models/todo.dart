class Task {
  final String name;
  final String description;
  final String date;
  bool isDone;

  Task({this.name, this.description, this.date, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
