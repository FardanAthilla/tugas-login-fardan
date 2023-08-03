import 'package:flutter/material.dart';
import 'package:login_page/start.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Color(0xFF263246), 
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return StartPage();
            }));
          },
          child: Text(
            'Log Out',
            style: TextStyle(color: Colors.white),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color(0xFF263246)), // Atur warna tombol "Log Out"
          ),
        ),
      ),
    );
  }
}
