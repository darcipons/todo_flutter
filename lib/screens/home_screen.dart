import 'package:flutter/material.dart';
import 'package:todo_taxfyle/screens/todo_screen.dart';
import 'package:todo_taxfyle/screens/completed_screen.dart';
import 'package:todo_taxfyle/models/todo.dart';
import 'package:todo_taxfyle/screens/add_todo.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Task> todos = [
    Task(
      name: 'Setup flutter environment',
      description: 'set up flutter to create a flutter app',
    ),
    Task(
      name: 'Create git repo',
      description: 'create repo on github',
    ),
    Task(
      name: 'Create Flutter base project',
      description: 'create flutter app',
    ),
  ];

  final List<Tab> myTabs = <Tab>[
    Tab(text: 'TODO'),
    Tab(text: 'COMPLETED'),
  ];

  addTodo(todo) => setState(() {
        todos.add(todo);
      });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('Todo App'),
          bottom: TabBar(
            labelColor: Colors.purple[100],
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.purple[100],
            tabs: myTabs,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple,
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    AddTodo((newTodoTitle, newTodoDescription) {
                  setState(() {
                    todos.add(
                      Task(name: newTodoTitle, description: newTodoDescription),
                    );
                  });
                }),
              ),
            );
            print('fab working');
          },
        ),
        body: TabBarView(
          children: <Widget>[
            TodoScreen(todos),
            CompletedScreen(todos),
          ],
        ),
      ),
    );
  }
}
