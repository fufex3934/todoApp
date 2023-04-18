import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       color: const Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
            ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
            children:  [
              const Text(
                  'Add Task',
                style: TextStyle(
                  color: Color(0xFFc3700b3),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10,),
             const TextField(
               textAlign: TextAlign.center,
               autofocus: true,
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFc3700b3),width: 2),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color:  Color(0xFFc3700b3),width: 2),
                ),

              ),
            ),
              const SizedBox(height: 60,),
              Container(
                width: 400,
                height: 50,
                decoration: const BoxDecoration(
                  color:  Color(0xFFc3700b3),

                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
