import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prapanch_j/utils/colours.dart';
import 'package:prapanch_j/utils/constants.dart';
import 'package:prapanch_j/widgets/icon_button.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMe extends StatelessWidget {
  final screentype;
  const ContactMe({super.key, this.screentype});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Container(
        width: double.infinity,
        // color: Colors.yellow,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Contact Me ",
              style: GoogleFonts.montserrat(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: blackcolor,
              ),
            ),
            Text(
              "If you have a project or just wanna chat with me,drop me an interesting mail at 👇",
              style: GoogleFonts.montserrat(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: blackcolor,
              ),
            ),
            InkWell(
              onTap: () => _launchUrl(mailtourl),
              child: Text(
                'prapanchappuse789@gmail.com',
                style: GoogleFonts.montserrat(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: secondaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor: secondaryColorLowopacity,
                  decorationThickness: 2,
                ),
              ),
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomIconButton(
                  imgurl: linkedin,
                  screentype: screentype,
                  function: () => _launchUrl(linkdinurl),
                ),
                CustomIconButton(
                  imgurl: github,
                  screentype: screentype,
                  function: () => _launchUrl(githuburl),
                ),
                CustomIconButton(
                  imgurl: twitter,
                  screentype: screentype,
                  function: () => _launchUrl(twitterxurl),
                ),
              ],
            ),
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
