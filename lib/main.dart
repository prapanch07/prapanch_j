import 'package:flutter/material.dart';
import 'package:prapanch_j/layout/layout_builder.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "prapanch",
      debugShowCheckedModeBanner: false,
      home: CustomLayoutBuilder(),
    );
  }
}
