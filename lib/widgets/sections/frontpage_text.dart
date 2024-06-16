import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prapanch_j/utils/colours.dart';

class FrontPageText extends StatelessWidget {
  final screentype;
  const FrontPageText({super.key, this.screentype});

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.sizeOf(context);
    return screentype != "tab"
        ? Container(
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: screentype == "tab"
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello there!',
                  style: GoogleFonts.montserrat(
                      color: secondaryColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const Gap(50),
                Text(
                  "I'm a Software Engineer || Flutter developer || Freelancer",
                  style: GoogleFonts.montserrat(
                    fontSize: screentype == "tab" ? 30 : _size.width / 60 - 2,
                    fontWeight: FontWeight.bold,
                    color: greyshade,
                  ),
                ),
                Text(
                  "Crafting code to bring ideas to life...",
                  style: GoogleFonts.montserrat(
                    fontSize: screentype == "tab" ? 40 : _size.width / 40 - 2,
                    fontWeight: FontWeight.bold,
                    color: secondaryColorLowopacity,
                  ),
                ),
                // Text(
                //   "Let's connect and create something extraordinary\n—make me an offer I can't refuse!",
                //   style: GoogleFonts.montserrat(
                //     fontSize: 23,
                //     fontWeight: FontWeight.bold,
                //     color: greyshade,
                //   ),
                // ),

                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "Let's connect and create something extraordinary\n—make me an offer",
                        style: GoogleFonts.montserrat(
                          fontSize:
                              screentype == "tab" ? 30 : _size.width / 60 - 2,
                          fontWeight: FontWeight.bold,
                          color: greyshade,
                        ),
                      ),
                      TextSpan(
                        text: " I can't refuse!",
                        style: GoogleFonts.montserrat(
                          fontSize:
                              screentype == "tab" ? 30 : _size.width / 60 - 2,
                          fontWeight: FontWeight.bold,
                          color: secondaryColor,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        : Container(
            width: double.infinity,
            // color: Colors.yellow,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Hello there!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      color: secondaryColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const Gap(50),
                Text(
                  "I'm a Software Engineer || Flutter developer || Freelancer",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: screentype == "tab" ? 30 : _size.width / 60 - 2,
                    fontWeight: FontWeight.bold,
                    color: greyshade,
                  ),
                ),
                Text(
                  "Crafting code to bring ideas to life...",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: screentype == "tab" ? 40 : _size.width / 40 - 2,
                    fontWeight: FontWeight.bold,
                    color: secondaryColorLowopacity,
                  ),
                ),
                // Text(
                //   "Let's connect and create something extraordinary\n—make me an offer I can't refuse!",
                //   style: GoogleFonts.montserrat(
                //     fontSize: 23,
                //     fontWeight: FontWeight.bold,
                //     color: greyshade,
                //   ),
                // ),

                Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "Let's connect and create something extraordinary\n—make me an offer",
                        style: GoogleFonts.montserrat(
                          fontSize:
                              screentype == "tab" ? 30 : _size.width / 60 - 2,
                          fontWeight: FontWeight.bold,
                          color: greyshade,
                        ),
                      ),
                      TextSpan(
                        text: " I can't refuse!",
                        style: GoogleFonts.montserrat(
                          fontSize:
                              screentype == "tab" ? 30 : _size.width / 60 - 2,
                          fontWeight: FontWeight.bold,
                          color: secondaryColor,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
