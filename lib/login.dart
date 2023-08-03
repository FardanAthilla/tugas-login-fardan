import 'package:flutter/material.dart';
import 'package:login_page/home.dart';
import 'package:login_page/start.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isPasswordVisible = false;

  String _username = '';
  String _password = '';

  bool _isRegisterButtonEnabled() {
    return _username.isNotEmpty && _password.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
              left: 5,
              right: 20,
            ),
            child: Row(
              children: [
                // Button Back
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return StartPage();
                    }));
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text
                  Text(
                    'Welcome Back!',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  // Text
                  Text(
                    'We’re excited to see you again',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  // Gambar
                  Image(image: AssetImage('assets/gambar4.png')),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Account Information',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  SizedBox(height: 5),
                  // Kotak Input Email
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {
                        setState(() {
                          _username = value;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Username',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  // Kotak Input Password
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: !_isPasswordVisible,
                      onChanged: (value) {
                        setState(() {
                          _password = value;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.0,
                          ),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(_isPasswordVisible
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  // Tulisan sama gambar google 
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Forgot Your Password',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF7397C4),
                          ),
                        ),
                        Image.asset('assets/gambar5.png'),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          // Button
                          child: ElevatedButton(
                            onPressed: _isRegisterButtonEnabled()
                                ? () {
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) {
                                      return HomePage();
                                    }));
                                  }
                                : null,
                            child: Text(
                              'Login',
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFF263246)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
