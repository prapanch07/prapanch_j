import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prapanch_j/controller/url_controller.dart';
import 'package:prapanch_j/utils/colours.dart';
import 'package:prapanch_j/utils/constants.dart';
import 'package:prapanch_j/widgets/hover_card_widget.dart';

class ExploreWorkScreen extends StatelessWidget {
  const ExploreWorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondaryColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () => _navigateToPOP(context),
        ),
        title: Text(
          "Explore My Works!",
          style: GoogleFonts.montserrat(
            // fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to my portfolio! Below, you'll find a showcase of my most recent projects and creative endeavors. Dive in to see the range of skills and cutting-edge techniques I've mastered.",
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: secondaryColorLowopacity,
                ),
              ),
              const Gap(10),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "My latest project is this porfolio, ",
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: secondaryColorLowopacity,
                      ),
                    ),
                    TextSpan(
                      text: "view source code!",
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: secondaryColor,
                        decoration: TextDecoration.underline,
                        decorationColor: secondaryColorLowopacity,
                        decorationThickness: 2,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => UrlController()
                            .onLaunchUrl(latestprojectsourcecode),
                    )
                  ],
                ),
              ),
              const Gap(50),
              SizedBox(
                height: 5000,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: size.width <= 768
                        ? 1
                        : size.width > 768 && size.width <= 1023
                            ? 2
                            : size.width > 1023
                                ? 3
                                : 0,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  itemCount: frames.length,
                  itemBuilder: (context, index) => HoverCardWidget(
                    image: frames[index],
                    title: titles[index],
                    description: descriptions[index],
                    url: projecturls[index],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToPOP(BuildContext context) {
    Navigator.pop(context);
  }
}
