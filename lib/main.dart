import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: ToDo(),
      ),
    );

class ToDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[500],
        title: Text('Todo App'),
      ),
    );
  }
}
