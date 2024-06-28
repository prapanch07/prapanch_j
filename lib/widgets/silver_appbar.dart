import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prapanch_j/utils/colours.dart';
import 'package:prapanch_j/utils/constants.dart';
import 'package:prapanch_j/widgets/button.dart';

class CustomSilverAppbar extends StatelessWidget {
  final bool explorescreen;
  final String screentype;
  const CustomSilverAppbar({
    super.key,
    required this.screentype,
    this.explorescreen = false,
  });

  @override
  Widget build(BuildContext context) {
    return !explorescreen
        ? SliverAppBar(
            pinned: false,
            backgroundColor: primaryColor,
            scrolledUnderElevation: 0.0,
            leadingWidth: 100,
            toolbarHeight: 100,
            leading: const Image(
              height: 100,
              width: 100,
              fit: BoxFit.cover,
              image: NetworkImage(jp),
            ),
            elevation: 0.0,
            automaticallyImplyLeading: false,
            expandedHeight: 50,
            floating: true,
            snap: true,
            actions: [
              screentype != "tab"
                  ? const Text('')
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: CustomButton(
                        url: resumeurl,
                        text: "Resume",
                        screentype: screentype,
                      ),
                    ),
            ],
          )
        : SliverAppBar(
            pinned: false,
            backgroundColor: secondaryColor,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: primaryColor,
                weight: 5,
              ),
              onPressed: () => _navigateToPOP(context),
            ),
            title: Text(
              "Explore My Works!",
              style: GoogleFonts.montserrat(
                // fontSize: 15,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
            scrolledUnderElevation: 0.0,
            leadingWidth: 100,
            toolbarHeight: 50,
            elevation: 0.0,
            automaticallyImplyLeading: false,
            expandedHeight: 50,
            floating: true,
            snap: true,
          );
  }

  void _navigateToPOP(BuildContext context) {
    Navigator.pop(context);
  }
}
