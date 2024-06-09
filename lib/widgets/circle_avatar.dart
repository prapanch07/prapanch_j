import 'package:flutter/material.dart';
import 'package:prapanch_j/utils/colours.dart';

class CustomCircleAvatar extends StatelessWidget {
  final String iconimg;
  const CustomCircleAvatar({super.key, required this.iconimg});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 30),
      child: CircleAvatar(
        radius: 30,
        backgroundColor: greyshade,
        child: Image.network(
          iconimg,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
