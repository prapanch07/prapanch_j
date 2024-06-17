import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prapanch_j/utils/colours.dart';
import 'package:prapanch_j/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;

  final String leadingicon;

  final String url;
  final String screenType;

  const CustomListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leadingicon,
    required this.screenType,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: () => _launchUrl(url),
      child: SizedBox(
        height: 90,
        width: screenType != "tab" ? size.width / 2 - 360 : 600,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  height: screenType != "tab" ? size.width / 24 - 10 : 70,
                  width: screenType != "tab" ? size.width / 24 - 10 : 70,
                  image: NetworkImage(leadingicon),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width / 60 - 2,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.montserrat(
                          fontSize:
                              screenType != "tab" ? size.width / 80 - 2 : 22,
                          fontWeight: FontWeight.bold,
                          color: blackcolor,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: GoogleFonts.montserrat(
                          fontSize:
                              screenType != "tab" ? size.width / 80 - 9 : 15,
                          fontWeight: FontWeight.bold,
                          color: secondaryColorLowopacity,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Image(
                  height: screenType != "tab" ? size.width / 80 - 3 : 21,
                  width: screenType != "tab" ? size.width / 80 - 3 : 21,
                  image: const NetworkImage(expandicon),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw "error";
    }
  }
}
