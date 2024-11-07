import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/views/active_task.dart';
import 'package:untitled/views/completed_task.dart';
import 'package:untitled/views/home_screen.dart';
import 'package:untitled/login_screen.dart';
import 'package:untitled/views/splash_screen.dart';
import 'package:untitled/views/task_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
//
// class SplashPage extends StatefulWidget {
//    SplashPage({super.key});
//
//   @override
//   State<SplashPage> createState() => SplashPageState();
// }
//
// class SplashPageState extends State<SplashPage> {
//   static  String KEYLOGIN = 'login';
//
//
//   void whereToGo()async{
//
//     var prefs =await SharedPreferences.getInstance();
//    var isLoggedIn =  prefs.getBool(KEYLOGIN);
//
//    Timer(Duration(seconds: 2), (){
//
//      if(isLoggedIn !=null){
//
//        if(isLoggedIn){
//
//          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
//
//
//        }else {
//
//          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
//
//        }
//
//      }else{
//
//        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
//
//      }
//
//
//    });
//
//
//
//   }
//
//
//
//
//
//   @override
//   void initState() {
// whereToGo();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//
//       body:
//       Container(color: Colors.blue,
//       height:double.infinity,
//       width: double.infinity,
//
//       child: Center(child: Text('Welcome to Application',style: TextStyle(fontSize: 30),)),
//       )
//
//
//       ,
//
//     );
//   }
// }


