import 'package:flutter/material.dart';

import '../widgets/tasks_list.dart';
import 'add_task_screen.dart';

class TasksScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const  Color(0xFFc3700b3),
      floatingActionButton: FloatingActionButton(
        backgroundColor:  const Color(0xFFc3700b3),
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context)=>const AddTaskScreen());
        },
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
                bottom: 30.0
            ),
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

