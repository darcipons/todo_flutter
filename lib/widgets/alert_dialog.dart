import 'package:flutter/material.dart';
import 'package:todo_taxfyle/models/todo.dart';

class TaskDialog extends StatefulWidget {
  final Function addToList;
  TaskDialog({Key key, @required this.addToList}) : super(key: key);

  @override
  _TaskDialogState createState() => _TaskDialogState();
}

class _TaskDialogState extends State<TaskDialog> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String newTodoTitle;
    return AlertDialog(
      content: TextField(
        controller: controller,
        autofocus: true,
        decoration: InputDecoration.collapsed(hintText: 'Enter todo'),
        onChanged: (newText) {
          newTodoTitle = newText;
        },
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            setState(() {
              controller.clear();
              widget.addToList(Task(name: newTodoTitle));
              Navigator.of(context).pop();
            });
            print(newTodoTitle);
          },
          child: Text('Add'),
          color: Colors.purple[300],
        ),
      ],
    );
  }
}
