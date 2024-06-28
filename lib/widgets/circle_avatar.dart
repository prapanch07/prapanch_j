import 'package:flutter/material.dart';
import 'package:prapanch_j/utils/colours.dart';

class CustomCircleAvatar extends StatelessWidget {
  final String screentype;
  final String iconimg;
  const CustomCircleAvatar(
      {super.key, required this.iconimg, this.screentype = ''});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
      child: CircleAvatar(
        radius: screentype != "tab" ? 30 : size.width / 30 - 2,
        backgroundColor: greyshade,
        child: Image.network(
          iconimg,
          fit: BoxFit.contain,
        ), 
      ),
    );
  }
}
