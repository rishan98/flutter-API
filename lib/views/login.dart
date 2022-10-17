import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:simple/views/homepage.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/affixmelogo.PNG',
              width: 150,
              height: 150,
            ),
            const Text(
              'Good Morning',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            const Text(
              'AffixMe Admin Portal',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 100.0,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  hintText: 'Enter User Name',
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter Password',
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Container(
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(12)),
              child: TextButton(
                  child: const Text(
                    'Signin',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
