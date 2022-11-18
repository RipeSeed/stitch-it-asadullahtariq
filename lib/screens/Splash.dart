import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Splash")),
        // ignore: prefer_const_constructors
        body: Material(
          color: Colors.black,
          child: const Text("Splash"),
        ));
  }
}
