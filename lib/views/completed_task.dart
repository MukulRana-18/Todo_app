import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CompletedTask extends StatefulWidget {
  const CompletedTask({super.key});

  @override
  State<CompletedTask> createState() => _CompletedTaskState();
}

class _CompletedTaskState extends State<CompletedTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: Center(
    child: Column(
    children: [
    SizedBox(height: 20,),
    Text('Completed Tasks',style: GoogleFonts.roboto(fontSize: 20),),

    Expanded(
    child: ListView.builder(
    itemCount: 0,

    itemBuilder: (context, index) {
    return Container(
      color: Colors.grey,
      child: ListTile(
        title: Text('title',style: GoogleFonts.roboto(fontSize: 25),),
        subtitle: Text('description',style: GoogleFonts.roboto(fontSize: 20),),
        trailing: IconButton(onPressed: (){}, icon: Icon(Icons.check_box_rounded),iconSize: 35,highlightColor: Colors.blue,),
      ),
    );

    },
    ),
    )
    ]
    )
    )
    );

  }
}
