import 'package:flutter/material.dart';
import 'package:prapanch_j/utils/constants.dart';

class ProgramingImageSection extends StatelessWidget {
  final screentype;
  const ProgramingImageSection({super.key, this.screentype});

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.sizeOf(context);

    return Image(
      //260
      // width: screentype == "large"
      width: screentype != "tab" ? _size.width / 2 - 300 : 660,
      // : _size.width / 2 - 400,
      // : 560, 
      fit: BoxFit.contain,
      image: const NetworkImage(
        programmerimage,
      ),
    );
  }
}
