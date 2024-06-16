import 'package:flutter/material.dart';
import 'package:prapanch_j/screens/home.dart';
import 'package:prapanch_j/layout/test_screen.dart';
import 'package:prapanch_j/screens/tab_screen.dart';

class CustomLayoutBuilder extends StatelessWidget {
  const CustomLayoutBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxwidth = constraints.maxWidth;
        // if (maxwidth >= 320 && maxwidth <= 480) {
        // oreinetation check
        if (maxwidth >= 320 && maxwidth <= 768) {
          return const TabScreenView(screenType: "tab");
        } else if (maxwidth >= 768 && maxwidth <= 1023) {
          return const TabScreenView(screenType: "tab");
        } else if (maxwidth >= 1023 && maxwidth <= 1280) {
          return const HomeScreen(
            screentype: "small",
          );
        } else if (maxwidth >= 1280 && maxwidth <= 1440) {
          return const HomeScreen(
            screentype: "medium",
          );
        }
        if (maxwidth >= 1440) { 
          return const HomeScreen(
            screentype: "large",
          );
        } else {
          return const TestScreen(
            text: "default",
          );
        }
      },
    );
  }
}
