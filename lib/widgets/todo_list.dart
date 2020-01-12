import 'package:flutter/material.dart';
import 'package:todo_taxfyle/widgets/todo_tile.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TodoTile(),
        TodoTile(),
      ],
    );
  }
}
