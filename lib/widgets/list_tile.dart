import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prapanch_j/utils/colours.dart';
import 'package:prapanch_j/utils/constants.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;

  final String leadingicon;

  const CustomListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leadingicon,
  });

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: 90,
      width: _size.width / 2 - 360,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            // titleAlignment: ListTileTitleAlignment.bottom,
            // leading:  Icon(
            //   leadingicon,
            //   size: 70,
            //   color: secondaryColor,
            // ),
            leading: Image(
              height: _size.width / 24 - 10,
              width: _size.width / 24 - 10,
              image: NetworkImage(leadingicon),
            ),
            title: Text(
              title,
              style: GoogleFonts.montserrat(
                fontSize: _size.width / 80 - 2,
                fontWeight: FontWeight.bold,
                color: blackcolor,
              ),
            ),
            horizontalTitleGap: 70,
            titleAlignment: ListTileTitleAlignment.top,
            subtitle: Text(
              subtitle,
              style: GoogleFonts.montserrat(
                fontSize: _size.width / 80 - 9,
                fontWeight: FontWeight.bold,
                color: secondaryColorLowopacity,
              ),
            ),

            // trailing: Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 20),
            //   child: Icon(
            //     trailingicon,
            //     size: 30,
            //   ),
            // ),
            trailing: Image(
              height: _size.width / 80 - 3,
              width: _size.width / 80 - 3,
              image: NetworkImage(expandicon),
            ),
          )
        ],
      ),
    );
  }
}
