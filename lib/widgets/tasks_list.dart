import 'package:flutter/material.dart';
import '../widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  const [
        TasksTile(),
        TasksTile(),
        TasksTile()
      ],
    );
  }
}

