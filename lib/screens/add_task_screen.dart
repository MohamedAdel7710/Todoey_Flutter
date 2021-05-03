import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/classes/tasks_data.dart';

class AddTaskScreen extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Text(
                'Add Task',
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              cursorColor: Colors.lightBlueAccent,
              onChanged: (value) {
                newTaskTitle = value;
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            FlatButton(
              onPressed: ()
              {
                // addTaskCallBack(newTaskTitle);
                Provider.of<TaskData>(context,listen: false).addNewTask(newTaskTitle);
                Navigator.pop(context);
              },
              color: Colors.lightBlueAccent,
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
