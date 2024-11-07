import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/views/home_screen.dart';
import 'package:untitled/main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final emailController = TextEditingController();
  final passController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Email'
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: passController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Password'
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: ()async{


                var prefs = await SharedPreferences.getInstance();
                // prefs.setBool(SplashPageState.KEYLOGIN, true);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));


              }, child:Text('Log in')),


            ],




          ),
        ),


      ),


    );
  }
}
