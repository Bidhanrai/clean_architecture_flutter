import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  final String name;
  const WelcomeView({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clean Architecture"),
      ),
      body: Center(
        child: Text("Welcome $name"),
      ),
    );
  }
}
