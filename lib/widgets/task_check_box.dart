import 'package:flutter/material.dart';


class TaskCheckBox extends StatelessWidget {
  bool checked;
  final Function(bool?) OnChangedHandler;
  TaskCheckBox(this.checked,this.OnChangedHandler, {super.key});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: checked,
        onChanged: OnChangedHandler,
      activeColor: const  Color(0xFFc3700b3),
    );
  }
}
