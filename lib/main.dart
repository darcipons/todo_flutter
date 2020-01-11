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
        ),
      ),
    );
  }
}
