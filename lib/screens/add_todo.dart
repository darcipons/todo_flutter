import 'package:flutter/material.dart';

class AddTodo extends StatefulWidget {
  @override
  _AddTodoState createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  TextEditingController controller = TextEditingController();
  List<String> todoList = [];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Enter todo:'),
      content: TextField(
        controller: controller,
        autofocus: true,
        decoration: InputDecoration.collapsed(hintText: 'Change font size'),
        onSubmitted: (String text) {
          print('submitted');
        },
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            setState(() {
              todoList.add(controller.text);
              controller.clear();
            });
            print('add button working');
          },
          child: Text('Add'),
          color: Colors.purple[300],
        ),
      ],
    );
  }
}
