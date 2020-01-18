import 'package:flutter/material.dart';
import 'package:todo_taxfyle/widgets/date_time.dart';
import 'package:todo_taxfyle/models/todo.dart';

class AddTodo extends StatelessWidget {
  final Function addTodoCallback;

  AddTodo(this.addTodoCallback);

  @override
  Widget build(BuildContext context) {
    String newTodoTitle;
    String newTodoDescription;

    return Scaffold(
      appBar: AppBar(
        title: Text('New Item'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                labelText: 'Task Name',
                labelStyle: TextStyle(color: Colors.purple),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.purple,
                  ),
                ),
              ),
              onChanged: (newTextTitle) {
                newTodoTitle = newTextTitle;
              },
            ),
            TextField(
              maxLines: 2,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                labelText: 'Description',
                labelStyle: TextStyle(color: Colors.purple),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.purple,
                  ),
                ),
              ),
              onChanged: (newTextDescription) {
                newTodoDescription = newTextDescription;
              },
            ),
            Row(
              children: <Widget>[
                DueDate(),
              ],
            ),
            RaisedButton(
              child: Text(
                'Save',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.purple,
              onPressed: () {
                addTodoCallback(newTodoTitle, newTodoDescription);
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
    );
  }
}
