import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prapanch_j/utils/colours.dart';

class AnimatedTextStyle extends StatefulWidget {
  final String screentype;
  final Color color;
  final double fontSize;
  final String text;
  const AnimatedTextStyle({
    super.key,
    this.screentype = '',
    required this.color,
    required this.text,
    required this.fontSize,
  });

  @override
  State<AnimatedTextStyle> createState() => _AnimatedTextStyleState();
}

class _AnimatedTextStyleState extends State<AnimatedTextStyle> {
  Color color = greyshade;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      color = widget.color;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedDefaultTextStyle(
        style: GoogleFonts.montserrat(
          fontSize: widget.fontSize,
          fontWeight: FontWeight.bold,
          color: color,
        ),
        duration: const Duration(milliseconds: 500),
        child: Text(
          widget.text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
