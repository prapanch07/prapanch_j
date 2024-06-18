import 'package:flutter/material.dart';
import 'package:prapanch_j/utils/colours.dart';

class HoverButton extends StatefulWidget {
  final String text;
  final Function() onTap;
  final double? width;
  final Color? textColor;
  const HoverButton({
    super.key,
    this.width,
    this.textColor,
    required this.text,
    required this.onTap,
  });
  @override
  // ignore: library_private_types_in_public_api
  _CustomOutlineButtonState createState() => _CustomOutlineButtonState();
}

class _CustomOutlineButtonState extends State<HoverButton> {
  double _animatedWidth = 0.0;
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          if (!isHover)
            Container(
              height: 35,
              width: 144,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: 35,
            width: _animatedWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(
                colors: [
                  Color(0xffbc4e9c),
                  Color(0xfff80759),
                ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
          ),
          InkWell(
            onHover: (value) {
              setState(() { 
                isHover = !isHover;
                _animatedWidth = value ? widget.width ?? 144 : 0.0;
              });
            },
            onTap: () {
              setState(() => _animatedWidth = 250);
              widget.onTap();
            },
            child: SizedBox(
              height: 35, 
              width: 144,
              child: Center(
                child: Text(
                  widget.text,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: isHover
                        ? Colors.white
                        : widget.textColor ?? secondaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
