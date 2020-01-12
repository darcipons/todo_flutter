import 'package:flutter/material.dart';
import 'package:todo_taxfyle/widgets/todo_list.dart';

class TodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            child: TodoList(),
          ),
        )
      ],
    );
  }
}
