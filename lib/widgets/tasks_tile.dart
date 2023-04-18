 import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  const TasksTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('Add a Task'),
      trailing: Checkbox(
          value: false,
          onChanged: null
      ),
    );
  }
}
