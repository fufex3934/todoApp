import 'package:flutter/material.dart';

import '../widgets/tasks_list.dart';

class TasksScreen extends StatefulWidget {

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const  Color(0xFFc3700b3),
      floatingActionButton: FloatingActionButton(
        backgroundColor:  const Color(0xFFc3700b3),
        onPressed: (){},
        child: const Icon(
          Icons.add,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 60.0,
                left: 30.0,
                right: 30.0,
                bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  const [
               CircleAvatar(
                   backgroundColor: Colors.white,
                   radius: 30.0,
                   child: Icon(
                     Icons.list,
                     size: 30.0,
                     color:    Color(0xffc3700b3),
                   ),
               ),
                SizedBox(height: 10,),
                Text(
                    'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 50
                  ),
                ),
                Text(
                    '12 Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration:  const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  )
              ),
               child: const TasksList(),
            ),
          )
        ],
      ),
    );
  }
}

