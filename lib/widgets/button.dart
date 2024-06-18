import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prapanch_j/controller/url_controller.dart';
import 'package:prapanch_j/utils/colours.dart';

class CustomButton extends StatefulWidget {
  final String url;
  final String text;
  final String screentype;
  const CustomButton(
      {super.key, required this.text, this.screentype = '', required this.url});

  @override
  State<CustomButton> createState() => _BouncingButtonState();
}

class _BouncingButtonState extends State<CustomButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final Duration _animationDuration = const Duration(milliseconds: 300);
  final Tween<double> _tween = Tween<double>(begin: 1.0, end: 0.95);
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: _animationDuration,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _controller.forward().then((_) {
          _controller.reverse();
        });
        Future.delayed(
          const Duration(milliseconds: 100),
          () => UrlController().onLaunchUrl(widget.url),
        );
      },
      child: ScaleTransition(
        scale: _tween.animate(
          CurvedAnimation(
            parent: _controller,
            curve: Curves.easeOut,
            reverseCurve: Curves.easeIn,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: secondaryColor, width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Container(
            height: 38,
            width: widget.screentype != "tab" ? 150 : 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: secondaryColor,
              border: Border.all(color: primaryColor, width: 2),
            ),
            child: Text(
              widget.text,
              style: GoogleFonts.montserrat(
                fontSize: widget.screentype != "tab" ? 18 : 12,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
