import 'package:flutter/material.dart';

class ToDoScreen extends StatefulWidget {
  @override
  _ToDoScreenState createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('Todo App'),
          bottom: TabBar(
            labelColor: Colors.purple[200],
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.purple[200],
            tabs: <Widget>[
              Text('TODO'),
              Text('COMPLETED'),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple,
          onPressed: () {
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter Todo',
                prefixIcon: IconButton(
                  icon: Icon(Icons.check_box_outline_blank),
                  onPressed: () {
                    setState(() {});
                    print('Icon button');
                  },
                ),
              ),
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
