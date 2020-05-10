import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:firebase_phoneauth/firebase_phoneauth.dart';   
import 'homepage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phone Authentication',
      routes: <String, WidgetBuilder>{
        '/homepage': (BuildContext context) => DashboardPage(),
        '/loginpage': (BuildContext context) => MyApp(),
      },
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: 
      FirebasePhoneAuth(
      titleTop: 'Heelo',
      theamColor: Colors.redAccent,
      title: "Ankit Patil",
      imgPath:"assets/images/doctors.png",
      redirectTo: "/homepage",

      ),
    );
  }
}