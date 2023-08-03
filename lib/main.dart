import 'package:flutter/material.dart';
import 'package:login_page/start.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage(),
    );
  }
}
