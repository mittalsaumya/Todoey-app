import 'package:flutter/material.dart';
import 'package:todey/widgets/task_tile.dart';
import 'package:todey/model/task.dart';
import 'package:todey/screens/TaskScreen.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  final Function deleteTask;
  TaskList(this.tasks, this.deleteTask);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            tasktitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isdone,
            longPressCallback: () {
              //idget.tasks[index].
              setState(() {
                widget.deleteTask(index);
              });
            },
            checkboxCallback: (checkboxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}
