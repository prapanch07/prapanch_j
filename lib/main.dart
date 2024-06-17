import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prapanch_j/screens/home.dart';
import 'package:prapanch_j/layout/layout_builder.dart';
import 'package:prapanch_j/layout/test_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: CustomLayoutBuilder(),
    );
  }
}
 