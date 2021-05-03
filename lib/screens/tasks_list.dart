import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/classes/task.dart';
import 'package:todoey_flutter/classes/tasks_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            Task task = taskData.taskslist[index];
            return TaskTile(
                taskTitle: task.name,
                isCheck:task.isDone,
                longPressCallback: (){
                  taskData.deleteTak(task);
                },
                checkBoxCallBack: (newValue) {
                  taskData.updateTask(task);
                });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
