import 'package:flutter/material.dart';

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

class TodoList extends StatelessWidget {
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

class TodoTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Setup Flutter environment'),
      leading: Checkbox(
        value: false,
      ),
    );
  }
}
