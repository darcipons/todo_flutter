import 'package:flutter/material.dart';
import 'package:todo_taxfyle/widgets/todo_list.dart';
import 'package:todo_taxfyle/models/todo.dart';

class TodoScreen extends StatefulWidget {
  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<Task> todos = [
    Task(name: 'Set up flutter'),
    Task(name: 'make repo'),
    Task(name: 'check list'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            child: TodoList(todos),
          ),
        )
      ],
    );
  }
}
