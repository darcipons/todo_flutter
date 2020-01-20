import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DueDate extends StatefulWidget {
  @override
  _DueDateState createState() => _DueDateState();
}

class _DueDateState extends State<DueDate> {
  DateTime selectedDate = DateTime.now();

  Future<Null> selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        return selectedDate.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final format = DateFormat.yMd().format(selectedDate);

    return RaisedButton(
      child: Row(
        children: <Widget>[
          Icon(Icons.calendar_today),
          Text('   Due Date:  $format'),
        ],
      ),
      color: Colors.grey[300],
      onPressed: () {
        setState(() {
          selectDate(context);
          print('due date button is working');
        });
      },
    );
  }
}
