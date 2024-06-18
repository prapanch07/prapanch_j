import 'package:flutter/material.dart';
import 'package:prapanch_j/utils/constants.dart';

class ProgramingImageSection extends StatelessWidget {
  final String screentype;
  const ProgramingImageSection({super.key, this.screentype = ''});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Image(
      width: screentype != "tab" ? size.width / 2 - 300 : 660,
      fit: BoxFit.contain,
      image: const NetworkImage(
        programmerimage,
      ),
    );
  }
}
