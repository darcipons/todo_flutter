import 'package:mobx/mobx.dart';

part 'todo_store.g.dart';

class Todo = _Todo with _$Todo;

abstract class _Todo with Store {}
