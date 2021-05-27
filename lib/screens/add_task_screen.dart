import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_todo_list/models/task.dart';
import 'package:provider/provider.dart';
import 'package:my_todo_list/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(40.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Text(
                'Add Task',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Color(0xff867ae9),
                ),
              ),
            ),
            TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                cursorColor: Color(0xff867ae9),
                cursorHeight: 28.0,
                onChanged: (newText){
                  newTaskTitle=newText;
                },
              ),

            FlatButton(
              child: Text('Add',
              style: TextStyle(
                color: Colors.white,
              ),
              ),
              color: Color(0xff867ae9),
              onPressed: (){
                Provider.of<TaskData>(context).addTask(newTaskTitle);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
