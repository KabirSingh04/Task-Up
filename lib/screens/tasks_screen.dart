import 'package:flutter/material.dart';
import 'package:my_todo_list/models/task_data.dart';
import 'package:my_todo_list/widgets/Tasks_list.dart';
import 'package:my_todo_list/screens/add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:my_todo_list/screens/Myinformation.dart';

class taskscreen extends StatelessWidget {
  Widget Myinformation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff867ae9),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff867ae9),
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) => SingleChildScrollView(
                      child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTaskScreen(),
                  )));
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: FloatingActionButton(
                  backgroundColor: Color(0xff867ae9),
                  child: Icon(
                    Icons.help,
                    color: Colors.white,
                    size: 40,
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                        builder: (BuildContext context) => SingleChildScrollView(
                            child: Container(
                              padding: EdgeInsets.only(
                                  bottom: MediaQuery.of(context).viewInsets.bottom),
                              child: Myinformationscreen(),
                            )));
                  },
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.calendar_today_sharp,
                    size: 30.0,
                    color: Color(0xff867ae9),
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Task Up!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))),
              child: TasksList(),
            ),
          )
        ],
      ),
    );
  }
}
