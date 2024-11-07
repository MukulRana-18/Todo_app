import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/modals/task_modal.dart';
import 'package:untitled/views/home_screen.dart';

import '../shared_preference.dart';

class ActiveTask extends StatefulWidget {
  ActiveTask({super.key,});
  // final List<TaskModal> tasks;



  @override
  State<ActiveTask> createState() => _ActiveTaskState();
}

class _ActiveTaskState extends State<ActiveTask> {
  List<String> _todos = [];

  @override
  void initState() {
    super.initState();
    _loadTodos(); 
  }

  Future<void> _loadTodos() async {
    List<String> todos = await SharedPreference.getTodoList();
    setState(() {
      _todos = todos;
    });
  }


  Future<void> _deleteTodoItem(int index) async {
    await SharedPreference.deleteTodoItem(index);
    _loadTodos();  // Reload the list
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Active Tasks',
              style: GoogleFonts.roboto(fontSize: 20),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _todos.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_todos[index]),
                    trailing: IconButton(
                      onPressed: () {
                        _deleteTodoItem(index);
                      },
                      icon: Icon(Icons.delete),
                      iconSize: 30,
                      highlightColor: Colors.blue,
                    ),
                    leading: IconButton(onPressed: (){

                    }, icon:Icon(Icons.check_box_outline_blank)),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
