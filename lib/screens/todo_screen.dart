import 'package:flutter/material.dart';
import 'package:todo_taxfyle/widgets/todo_list.dart';
import 'package:todo_taxfyle/models/todo.dart';

class TodoScreen extends StatefulWidget {
  final List<Task> todos;

  TodoScreen(this.todos);

  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            child: TodoList(widget.todos),
          ),
        ),
      ],
    );
  }
}
