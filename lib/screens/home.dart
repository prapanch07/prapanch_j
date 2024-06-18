import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prapanch_j/screens/explore_works.dart';
import 'package:prapanch_j/utils/colours.dart';
import 'package:prapanch_j/utils/constants.dart';
import 'package:prapanch_j/widgets/contact_me.dart';
import 'package:prapanch_j/widgets/sections/about_me_section.dart';
import 'package:prapanch_j/widgets/button.dart';
import 'package:prapanch_j/widgets/circle_avatar.dart';
import 'package:prapanch_j/widgets/sections/experience.dart';
import 'package:prapanch_j/widgets/sections/frontpage_text.dart';
import 'package:prapanch_j/widgets/sections/programming_image_section.dart';

class HomeScreen extends StatelessWidget {
  final String screentype;
  const HomeScreen({super.key, required this.screentype});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
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
                fontSize: 40,
                color: secondaryColorLowopacity,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 50),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(100),
                        const FrontPageText(),
                        const Gap(50),
                        const CustomButton(
                          url: linkdinurl,
                          text: "Let's connect",
                        ),
                        const Gap(20),
                        Gap(size.height / 2.6),
                        const AboutMe(),
                        const Gap(30),
                        const CustomButton(
                          url: resumeurl,
                          text: 'My Resume',
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
                        const Gap(100),
                      ],
                    ),
                    // 800 x 600
                    Column(
                      children: [
                        const ProgramingImageSection(),
                        Gap(size.height / 4),
                        ExperienceSection(screentype: screentype),
                      ],
                    ),
                  ],
                ),
                Text.rich(
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
                            " empowering\nme to craft seamless and innovative solutions.",
                      )
                    ],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomCircleAvatar(iconimg: flutter),
                    CustomCircleAvatar(iconimg: firebase),
                    CustomCircleAvatar(iconimg: nodejs),
                    CustomCircleAvatar(iconimg: python),
                    CustomCircleAvatar(iconimg: html),
                    CustomCircleAvatar(iconimg: css),
                    CustomCircleAvatar(iconimg: js),
                    CustomCircleAvatar(iconimg: streamlit),
                    CustomCircleAvatar(iconimg: figma),
                    CustomCircleAvatar(iconimg: cprog),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 35,
                    vertical: 100,
                  ),
                  child: ContactMe(),
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
