import 'package:flutter/material.dart';
import 'package:todo_taxfyle/screens/add_todo.dart';
import 'package:todo_taxfyle/screens/todo_screen.dart';
import 'package:todo_taxfyle/screens/completed_screen.dart';
import 'package:todo_taxfyle/widgets/alert_dialog.dart';
import 'package:todo_taxfyle/models/todo.dart';
import 'package:todo_taxfyle/screens/completed_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Task> todos = [
    Task(name: 'Set up flutter'),
    Task(name: 'make repo'),
    Task(name: 'check list'),
  ];

  final List<Tab> myTabs = <Tab>[
    Tab(text: 'TODO'),
    Tab(text: 'COMPLETED'),
  ];

  addTodo(todo) => setState(() {
        todos.add(todo);
      });

  getList(i) => todos.where((todo) => todo.isDone == i).toList();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('Todo App'),
          bottom: TabBar(
            labelColor: Colors.purple[200],
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.purple[200],
            tabs: myTabs,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple,
          child: Icon(Icons.add),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => TaskDialog(addToList: addTodo));
            print('fab is working');
          },
        ),
        body: TabBarView(
          children: <Widget>[
            TodoScreen(getList(false)),
            CompletedScreen(
              getList(true),
            ),
          ],
        ),
      ),
    );
  }
}
