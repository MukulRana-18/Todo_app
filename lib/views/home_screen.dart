import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/login_screen.dart';
import 'package:untitled/views/active_task.dart';
import 'package:untitled/views/completed_task.dart';
import 'package:untitled/views/splash_screen.dart';
import 'package:untitled/views/task_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TaskScreen(),));
            }, icon: const Icon(Icons.add), color: Colors.black, iconSize: 30,)

          ],

          title: Text(
            'ToDo',
            style: GoogleFonts.roboto(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.black,
              indicatorWeight: 2,
              labelPadding: EdgeInsets.symmetric(horizontal: 30),
              tabs: [
                Text(
                  'Active ',
                  style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  'Completed',
                  style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ]),
        ),


        body: TabBarView(
            children: [

              ActiveTask(),
              CompletedTask(),


            ]),


      ),
    );
  }
}
