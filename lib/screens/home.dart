import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prapanch_j/screens/explore_works.dart';
import 'package:prapanch_j/utils/colours.dart';
import 'package:prapanch_j/utils/constants.dart';
import 'package:prapanch_j/widgets/sections/about_me_section.dart';
import 'package:prapanch_j/widgets/button.dart';
import 'package:prapanch_j/widgets/circle_avatar.dart';
import 'package:prapanch_j/widgets/sections/experience_contactme.dart';
import 'package:prapanch_j/widgets/sections/frontpage_text.dart';
import 'package:prapanch_j/widgets/icon_button.dart';
import 'package:prapanch_j/widgets/list_tile.dart';
import 'package:prapanch_j/widgets/sections/programming_image_section.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  final String screentype;
  const HomeScreen({super.key, required this.screentype});

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.sizeOf(context);
    print(_size.width);
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
                Container(
                  // color: screentype == 'large' ? secondaryColor : blackcolor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Gap(100),

                          const FrontPageText(),
                          const Gap(50),

                          // on click no animation seen check ,,, and add hover effect if neecessary
                          CustomButton(
                            onTap: () => _launchUrl(linkdinurl),
                            text: "Let's connect",
                          ),
                          const Gap(20),

                          Gap(_size.height / 2.6),
                          const AboutMe(),
                          const Gap(30),
                          CustomButton(
                            onTap: () => _launchUrl(resumeurl),
                            text: 'My Resume',
                          ),

                          // provide underline using divider

                          //Let's connect and create something extraordinary—make me an offer I can't refuse!
                          // //I am a Software Engineer || Flutter developer || Freelancer
                          //Crafting code to bring ideas to life...
                          // make an offer that i cant refuse

                          //define common textstyle
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

                          // Text(
                          //   'I  have attained knowledge in an array of cutting-edge tech stacks empowering\nme to craft seamless and innovative solutions.',
                          //   textAlign: TextAlign.center,style: GoogleFonts.montserrat(
                          //     fontSize: 24,
                          //     fontWeight: FontWeight.bold,
                          //     color: greyshade,
                          //   ),
                          // )
                        ],
                      ),
                      // 800 x 600
                      Column(
                        children: [
                          const ProgramingImageSection(),
                          Gap(_size.height / 4),
                          ExperienceSection(screentype: screentype),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                function: () => _launchUrl(linkdinurl),
                                imgurl: linkedin,
                              ),
                              CustomIconButton(
                                function: () => _launchUrl(githuburl),
                                imgurl: github,
                              ),
                              CustomIconButton(
                                function: () => _launchUrl(mailtourl),
                                imgurl: gmail,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
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

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw "error";
    }
  }
}
