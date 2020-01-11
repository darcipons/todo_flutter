import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Todo App'),
            bottom: TabBar(
              tabs: <Widget>[
                Text('TODO'),
                Text('COMPLETED'),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[Text('Todo'), Text('Completed')],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}

class ToDo extends StatefulWidget {
  @override
  _ToDoState createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
