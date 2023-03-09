// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tss/screens/auth_screen.dart';
import 'package:tss/screens/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //for border of mail&password of all app
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(25)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(25)),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(25)),
        ),
      ),
      home: Intro(),
      routes: {
        'login': (context) => Auto(
              authtype: Authtype.login,
            ),
        'register': (context) => Auto(authtype: Authtype.register)
      },
    );
    //print('go');
  }
}
