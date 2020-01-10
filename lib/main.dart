import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: ToDo(),
      ),
    );

class ToDo extends StatelessWidget {
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
          title: Text('Todo App'),
          backgroundColor: Colors.purple[600],
          bottom: TabBar(
            labelColor: Colors.purple[200],
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.purple[200],
            tabs: myTabs,
          ),
        ),
      ),
    );
  }
}
