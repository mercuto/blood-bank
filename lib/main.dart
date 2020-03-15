import 'package:blood_bank/Screens/login_screen.dart';
import 'package:blood_bank/Screens/main_screen.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BloodBank',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.green,
      ),
      home: MainScreen(),
      routes: {
        LoginScreen.routeName: (ctx) => LoginScreen(),
      },
    );
  }
}
