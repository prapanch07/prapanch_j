import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  final text;
  const TestScreen({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(text),
      ),
    );
  }
}
