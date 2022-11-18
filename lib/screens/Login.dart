import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Login")),
        // ignore: prefer_const_constructors
        body: Material(
          color: Colors.black,
          child: const Text("Login"),
        ));
  }
}
