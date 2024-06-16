import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prapanch_j/utils/colours.dart';

class AboutMe extends StatelessWidget {
  final screentype;
  const AboutMe({super.key, this.screentype});

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.sizeOf(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        // color: Colors.yellow,
        width: screentype != "tab" ? _size.width / 2 : double.infinity,
        child: Column(
          crossAxisAlignment: screentype != "tab"
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.center,
          children: [
            Text(
              'About Me',
              style: GoogleFonts.montserrat(
                fontSize: screentype != "tab" ? _size.width / 80 - 1 : 23,
                // fontSize: 23,
                fontWeight: FontWeight.bold,
                color: secondaryColor,
              ),
            ),
            const Gap(20),
            Text(
              "Hi, I'm J Prapanch, a passionate B.Tech graduate with 1.5 years of hands-on experience in Flutter development.Over the years, I've crafted a number of applications using Flutter & Firebase,turning ideas into dynamic,functional realities. As a dedicated software engineer & freelancer,I thrive on bringing creative concepts to life through elegant code & intuitive design.",
              textAlign:
                  screentype != "tab" ? TextAlign.justify : TextAlign.justify,
              style: GoogleFonts.montserrat(
                fontSize: screentype != "tab" ? _size.width / 80 - 4 : 20,
                // fontSize: 20,
                fontWeight: FontWeight.w500,
                color: blackcolor,
                height: 1.5,
              ),
            ), 
          ],
        ),
      ),
    );
  }
}
