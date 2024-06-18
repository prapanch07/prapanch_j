import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prapanch_j/screens/explore_works.dart';
import 'package:prapanch_j/utils/colours.dart';
import 'package:prapanch_j/utils/constants.dart';
import 'package:prapanch_j/widgets/button.dart';
import 'package:prapanch_j/widgets/circle_avatar.dart';
import 'package:prapanch_j/widgets/contact_me.dart';
import 'package:prapanch_j/widgets/sections/about_me_section.dart';
import 'package:prapanch_j/widgets/sections/experience.dart';
import 'package:prapanch_j/widgets/sections/frontpage_text.dart';
import 'package:prapanch_j/widgets/sections/programming_image_section.dart';

class TabScreenView extends StatelessWidget {
  final String screenType;
  const TabScreenView({super.key, required this.screenType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        centerTitle: false,
        title: const Padding(
          padding: EdgeInsets.all(23.0),
          child: Text(
            'JP',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: secondaryColorLowopacity,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomButton(
              url: resumeurl,
              text: "Resume",
              screentype: screenType,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FrontPageText(
              screentype: screenType, 
            ),
            const Gap(50),
            CustomButton(
              url: linkdinurl,
              text: "Let's Connect",
              screentype: screenType,
            ),
            const Gap(50),
            ProgramingImageSection(
              screentype: screenType,
            ),
            const Gap(50),
            AboutMe(
              screentype: screenType,
            ),
            const Gap(20),
            InkWell(
              onTap: () => _navigateToExploreWork(context),
              onHover: (value) {
                //set blue color while hovering
              },
              child: Text(
                'Explore my works here ...',
                style: GoogleFonts.montserrat(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: secondaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor: secondaryColorLowopacity,
                  decorationThickness: 2,
                ),
              ),
            ),
            const Gap(50),
            ExperienceSection(screentype: screenType),
            const Gap(50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  style: GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: greyshade,
                  ),
                  children: const [
                    TextSpan(
                      text:
                          "I  have attained knowledge in an array of cutting-edge ",
                    ),
                    TextSpan(
                      text: "tech stacks",
                      style: TextStyle(
                        color: secondaryColorLowopacity,
                      ),
                    ),
                    TextSpan(
                      text:
                          " empowering me to craft seamless and innovative solutions.",
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomCircleAvatar(
                  iconimg: flutter,
                  screentype: screenType,
                ),
                CustomCircleAvatar(
                  iconimg: firebase,
                  screentype: screenType,
                ),
                CustomCircleAvatar(
                  iconimg: nodejs,
                  screentype: screenType,
                ),
                CustomCircleAvatar(
                  iconimg: python,
                  screentype: screenType,
                ),
                CustomCircleAvatar(
                  iconimg: html,
                  screentype: screenType,
                ),
                CustomCircleAvatar(
                  iconimg: css,
                  screentype: screenType,
                ),
                CustomCircleAvatar(
                  iconimg: js,
                  screentype: screenType,
                ),
                CustomCircleAvatar(
                  iconimg: streamlit,
                  screentype: screenType,
                ),
                CustomCircleAvatar(
                  iconimg: figma,
                  screentype: screenType,
                ),
                CustomCircleAvatar(
                  iconimg: cprog,
                  screentype: screenType,
                ),
              ],
            ),
            const Gap(50),
            ContactMe(
              screentype: screenType,
            ),
            const Gap(200),
            Text(
              "copyright © 2024 JP ❤ Made with flutter",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                color: secondaryColorLowopacity,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToExploreWork(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ExploreWorkScreen(),
      ),
    );
  }
}
