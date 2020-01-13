import 'package:flutter/material.dart';

class Dialogg extends StatefulWidget {
  @override
  _DialoggState createState() => _DialoggState();
}

class _DialoggState extends State<Dialogg> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String newTodoTitle;
    return AlertDialog(
      title: Text('Enter todo:'),
      content: TextField(
        controller: controller,
        autofocus: true,
        decoration: InputDecoration.collapsed(hintText: 'Change font size'),
        onChanged: (newText) {
          newTodoTitle = newText;
        },
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            setState(() {
              controller.clear();
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
