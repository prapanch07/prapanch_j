import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prapanch_j/utils/colours.dart';
import 'package:prapanch_j/widgets/animated_text.dart';

class FrontPageText extends StatelessWidget {
  final String screentype;
  const FrontPageText({super.key, this.screentype = ''});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return screentype != "tab"
        ? Column(
            crossAxisAlignment: screentype == "tab"
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            children: [
             
              AnimatedTextStyle(
                color: secondaryColor,
                text: "Hello there!",
                screentype: screentype,
                fontSize: 25,
              ),
              Gap(size.width / 50),

              Text(
                "I'm a Software Engineer || Flutter developer || Freelancer",
                style: GoogleFonts.montserrat(
                  fontSize: screentype == "tab" ? 30 : size.width / 60 - 2,
                  fontWeight: FontWeight.bold,
                  color: greyshade,
                ),
              ),
             

              AnimatedTextStyle(
                color: secondaryColorLowopacity,
                text: "Crafting code to bring ideas to life...", 
                fontSize: size.width / 40 - 2,
                screentype: screentype,
              ),
             

              Text(
                "Let's connect and create something extraordinary",
                style: GoogleFonts.montserrat(
                  fontSize: screentype == "tab" ? 30 : size.width / 60 - 2,
                  fontWeight: FontWeight.bold,
                  color: greyshade,
                ),
              ),
              Row(
                children: [
                  Text(
                    "—make me an offer",
                    style: GoogleFonts.montserrat(
                      fontSize: screentype == "tab" ? 30 : size.width / 60 - 2,
                      fontWeight: FontWeight.bold,
                      color: greyshade,
                    ),
                  ),
                  AnimatedTextStyle(
                    color: secondaryColor,
                    text: " I can't refuse!",
                    fontSize: size.width / 60 - 2,
                    screentype: screentype,
                  )
                ],
              )
            ],
          )
        : SizedBox(
            width: double.infinity,
            // color: Colors.yellow,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
        

                AnimatedTextStyle(
                  color: secondaryColor,
                  text: "Hello there!",
                  fontSize: 25,
                  screentype: screentype,
                ),
                const Gap(50),
                Text(
                  "I'm a Software Engineer || Flutter developer || Freelancer",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: screentype == "tab" ? 30 : size.width / 60 - 2,
                    fontWeight: FontWeight.bold,
                    color: greyshade,
                  ),
                ),
           
                AnimatedTextStyle(
                  color: secondaryColorLowopacity,
                  text: "Crafting code to bring ideas to life...",
                  fontSize: 40,
                  screentype: screentype,
                ),
          
   
                Text(
                  "Let's connect and create something extraordinary",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: greyshade,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "—make me an offer",
                      style: GoogleFonts.montserrat(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: greyshade,
                      ),
                    ),
                    AnimatedTextStyle(
                      color: secondaryColor,
                      text:
                          size.width <= 535 ? " I can't " : " I can't refuse!",
                      fontSize: 30,
                      screentype: screentype,
                    )
                  ],
                ),
                AnimatedTextStyle(
                  color: secondaryColor,
                  text: size.width <= 535 ? "refuse!" : '',
                  fontSize: 30,
                  screentype: screentype,
                )
              ],
            ),
          );
  }
}
