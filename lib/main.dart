import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/signUp_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AuKoda Test App',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      // home: RegisterScreen()
    );
  }
}


