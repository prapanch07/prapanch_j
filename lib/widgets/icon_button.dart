import 'package:flutter/material.dart';
import 'package:prapanch_j/utils/colours.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback function;
  final String imgurl;

  const CustomIconButton({
    super.key,
    required this.function,
    required this.imgurl,
  });

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: IconButton(
        onPressed: function,
        icon: Image(
          height: _size.width / 40 - 8,
          width: _size.width / 40 - 8,
          color: iconcolor,
          image: NetworkImage(imgurl),
        ),
      ),
    );
  }
}
