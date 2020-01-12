import 'package:flutter/material.dart';
import 'package:todo_taxfyle/screens/todo_screen.dart';
import 'package:todo_taxfyle/screens/completed_screen.dart';
import 'package:todo_taxfyle/screens/add_todo.dart';

class HomeScreen extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'TODO'),
    Tab(text: 'COMPLETED'),
  ];

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
            showDialog(context: context, builder: (context) => AddTodo());
            print('fab is working');
          },
        ),
        body: TabBarView(
          children: <Widget>[
            TodoScreen(),
            CompletedScreen(),
          ],
        ),
      ),
    );
  }
}
