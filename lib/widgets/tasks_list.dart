import 'package:flutter/material.dart';
import '../models/task.dart';
import '../widgets/tasks_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  // List<Task> tasks = [
  //   Task(name: 'Buy Milk'),
  //   Task(name: 'Buy tea'),
  //   Task(name: 'Buy Coffee'),
  // ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:   [
        TasksTile(),
        TasksTile(),
        TasksTile()
      ],
    );
  }
}

