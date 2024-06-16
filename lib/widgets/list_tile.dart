import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prapanch_j/utils/colours.dart';
import 'package:prapanch_j/utils/constants.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;

  final String leadingicon;
  final String screenType;

  const CustomListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leadingicon,
    required this.screenType,
  });

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: 90,
      width: screenType != "tab" ? _size.width / 2 - 360 : 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // ListTile(
          //   // titleAlignment: ListTileTitleAlignment.bottom,
          //   // leading:  Icon(
          //   //   leadingicon,
          //   //   size: 70,
          //   //   color: secondaryColor,
          //   // ),
          //   // minLeadingWidth: 20,
          //   // contentPadding: EdgeInsets.all(0),

          //   // make custom list tile using container for better result

          //   leading: screenType == "small"
          //       ? null
          //       : Image(
          //           height: screenType != "tab" ? _size.width / 24 - 10 : 70,
          //           width: screenType != "tab" ? _size.width / 24 - 10 : 70,
          //           image: NetworkImage(leadingicon),
          //         ),
          //   title: Text(
          //     title,
          //     style: GoogleFonts.montserrat(
          //       fontSize: screenType != "tab" ? _size.width / 80 - 2 : 22,
          //       fontWeight: FontWeight.bold,
          //       color: blackcolor,
          //     ),
          //   ),
          //   horizontalTitleGap:
          //       screenType != "tab" ? _size.width / 24 - 10 : 70,
          //   titleAlignment: ListTileTitleAlignment.top,
          //   subtitle: Text(
          //     subtitle,
          //     style: GoogleFonts.montserrat(
          //       fontSize: screenType != "tab" ? _size.width / 80 - 9 : 15,
          //       fontWeight: FontWeight.bold,
          //       color: secondaryColorLowopacity,
          //     ),
          //   ),

          //   // trailing: Padding(
          //   //   padding: const EdgeInsets.symmetric(vertical: 20),
          //   //   child: Icon(
          //   //     trailingicon,
          //   //     size: 30,
          //   //   ),
          //   // ),
          //   trailing: Image(
          //     height: screenType != "tab" ? _size.width / 80 - 3 : 21,
          //     width: screenType != "tab" ? _size.width / 80 - 3 : 21,
          //     image: NetworkImage(expandicon),
          //   ),
          // )

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  height: screenType != "tab" ? _size.width / 24 - 10 : 70,
                  width: screenType != "tab" ? _size.width / 24 - 10 : 70,
                  image: NetworkImage(leadingicon),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: _size.width / 60 - 2,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.montserrat(
                            fontSize:
                                screenType != "tab" ? _size.width / 80 - 2 : 22,
                            fontWeight: FontWeight.bold,
                            color: blackcolor,
                          ),
                        ),
                        Text(
                          subtitle,
                          style: GoogleFonts.montserrat(
                            fontSize:
                                screenType != "tab" ? _size.width / 80 - 9 : 15,
                            fontWeight: FontWeight.bold,
                            color: secondaryColorLowopacity,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  child: Image(
                    height: screenType != "tab" ? _size.width / 80 - 3 : 21,
                    width: screenType != "tab" ? _size.width / 80 - 3 : 21,
                    image: NetworkImage(expandicon),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
