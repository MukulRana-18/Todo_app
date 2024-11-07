import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/views/home_screen.dart';
import 'package:untitled/shared_preference.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  final taskController = TextEditingController();

  Future<void> _addTodo() async {
    String todoTitle = taskController.text.trim();

    if (todoTitle.isNotEmpty) {
      await SharedPreference.addTodoItem(todoTitle);
      taskController.clear();
    }
  }

//   void addItem() {
//     final String title = titleController.text;
//
//     if(title.isNotEmpty){
//
//       setState(() {
//         tasks.add(TaskModal(title));
//       });
// titleController.clear();
//
//     }
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ToDo',
          style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 120,
          ),
          Text(
            "Add Task",
            style:
                GoogleFonts.roboto(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              child: TextField(
                controller: taskController,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              _addTodo();
              // addItem();

              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                  (Route<dynamic> route) => false);
            },
            style: ElevatedButton.styleFrom(
                elevation: 20,
                minimumSize: Size(120, 40),
                backgroundColor: Colors.blue),
            child: Text(
              'SAVE',
              style: GoogleFonts.roboto(color: Colors.black, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
