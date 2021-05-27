import 'package:flutter/material.dart';
import 'package:my_todo_list/models/task_data.dart';
import 'package:my_todo_list/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: taskscreen(),
      ),
    );
  }
}
