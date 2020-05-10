import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_phoneauth/firebase_phoneauth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'homepage.dart'; 
import 'authservice.dart';   
FirebaseAuth _auth = FirebaseAuth.instance;

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  // Set default home.
  Widget _defaultHome = new MyApp();

  // Get result of the login function.
   FirebaseUser currentUser = await _auth.currentUser();
  //  _defaultHome = new DashboardPage();
      if (currentUser != null) {
        // User is logged in
        _defaultHome = new DashboardPage();
      } 
  // Run app!
  runApp(new MaterialApp(
    title: 'App',
    home: _defaultHome,
    routes: <String, WidgetBuilder>{
      // Set routes for using the Navigator.
      '/homepage': (BuildContext context) => new DashboardPage(),
      '/loginpage': (BuildContext context) => new MyApp()
    },
  ));
}

