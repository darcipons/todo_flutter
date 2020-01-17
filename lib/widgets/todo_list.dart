import 'package:flutter/material.dart';
import 'package:todo_taxfyle/widgets/todo_tile.dart';
import 'package:todo_taxfyle/models/todo.dart';

class TodoList extends StatefulWidget {
  final List<Task> todos;

  TodoList(this.todos);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.todos.length,
      itemBuilder: (context, index) {
        if (widget.todos[index].isDone == false) {
          return TodoTile(
            todoTitle: widget.todos[index].name,
            todoDescription: widget.todos[index].description,
            isChecked: widget.todos[index].isDone,
            checkboxCallback: (bool checkboxState) {
              setState(
                () {
                  widget.todos[index].toggleDone();
                },
              );
            },
          );
        } else {
          return null;
        }
      },
    );
  }
}
