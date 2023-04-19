 import 'package:flutter/material.dart';
import '../widgets/task_check_box.dart';

class TasksTile extends StatefulWidget {


  @override
  State<TasksTile> createState() => _TasksTileState();
}

class _TasksTileState extends State<TasksTile> {
  bool isChecked = false;

  void _OnChangeHandler(bool? newValue){
    setState(() {
      isChecked = newValue!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      title:  Text(
          'Buy a milk',
        style: TextStyle(
          decoration: isChecked? TextDecoration.lineThrough:null
        ),
      ),
      trailing: TaskCheckBox(isChecked,_OnChangeHandler),
    );
  }
}

