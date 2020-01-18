import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final bool isChecked;
  final String todoTitle;
  final String todoDescription;
//  final String todoDate;
  final Function checkboxCallback;

  TodoTile({
    this.isChecked,
    this.todoTitle,
    this.todoDescription,
//    this.todoDate,
    this.checkboxCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        todoTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      subtitle: Text(todoDescription),
      isThreeLine: true,
      leading: Checkbox(
        activeColor: Colors.purple[300],
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
