import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final bool isChecked;
  final String todoTitle;
  final Function checkboxCallback;

  TodoTile({this.isChecked, this.todoTitle, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        todoTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      leading: Checkbox(
        activeColor: Colors.purple[300],
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
//      onTap: () {
//        Navigator.push(
//          context,
//          MaterialPageRoute(builder: (context) => CompletedScreen()),
//        );
//      },
  }
}

//void checkboxCallback(bool checkboxState) {
//  setState(() {
//    isChecked = checkboxState;
//  });
//}
//
