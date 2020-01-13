import 'package:flutter/material.dart';
import 'package:todo_taxfyle/widgets/completed_list.dart';
import 'package:todo_taxfyle/models/todo.dart';

class CompletedScreen extends StatefulWidget {
  final List<Task> todos;

  CompletedScreen(this.todos);

  @override
  _CompletedScreenState createState() => _CompletedScreenState();
}

class _CompletedScreenState extends State<CompletedScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            child: CompletedList(widget.todos),
          ),
        )
      ],
    );
  }
}
