import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/task_data.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                title: taskData.getTaskByIndex(index).name,
                isChecked: taskData.getTaskByIndex(index).isDone,
                longPressCallBack: () {
                  Provider.of<TaskData>(context, listen: false)
                      .deleteTask(index);
                },
                checkboxCallback: (checkBoxState) {
                  Provider.of<TaskData>(context, listen: false)
                      .updateTask(taskData.getTaskByIndex(index));
                });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
