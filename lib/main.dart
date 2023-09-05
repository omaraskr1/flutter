import 'package:firstflutterapp/LoginScreen.dart';
import 'package:firstflutterapp/MassengerScreen.dart';
import 'package:firstflutterapp/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // const MyApp({super.key});

  // const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: MassengerScreen(),
    );


  }
}
