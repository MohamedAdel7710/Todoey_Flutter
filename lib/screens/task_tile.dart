import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isCheck;
  final String taskTitle;
  final Function checkBoxCallBack;
  final Function longPressCallback;

  TaskTile({this.taskTitle, this.isCheck, this.checkBoxCallBack,this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isCheck ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isCheck,
          onChanged: checkBoxCallBack,
        ));
  }
}
