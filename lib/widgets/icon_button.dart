import 'package:flutter/material.dart';
import 'package:prapanch_j/utils/colours.dart';

class CustomIconButton extends StatelessWidget {
  final String screentype;
  final VoidCallback function;
  final String imgurl;

  const CustomIconButton({
    super.key,
    required this.function,
    required this.imgurl,
    this.screentype = '',
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: IconButton(
        onPressed: function,
        icon: Image(
          height: screentype != "tab" ? size.width / 40 - 8 : 40,
          width: screentype != "tab" ? size.width / 40 - 8 : 40,
          color: iconcolor,
          fit: BoxFit.cover,
          image: NetworkImage(
            imgurl,
          ),
        ),
      ),
    );
  }
}
