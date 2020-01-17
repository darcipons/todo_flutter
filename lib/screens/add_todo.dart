import 'package:flutter/material.dart';

class AddTodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Item'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: 'Task Name',
              labelStyle: TextStyle(color: Colors.purple),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.purple,
                ),
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Description',
              labelStyle: TextStyle(color: Colors.purple),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.purple,
                ),
              ),
            ),
          ),
          RaisedButton(
            child: Text(
              'Save',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.purple,
            onPressed: () {
              print('add item button');
            },
          )
        ],
      ),
    );
  }
}
