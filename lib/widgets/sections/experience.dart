import 'package:flutter/material.dart';
import 'package:prapanch_j/utils/constants.dart';
import 'package:prapanch_j/widgets/list_tile.dart';

class ExperienceSection extends StatelessWidget {
  final String screentype;
  const ExperienceSection({super.key, required this.screentype});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          CustomListTile(
            title: "casamedia",
            subtitle: "Flutter Developer Intern",
            leadingicon: casamedia,
            url: casamediaurl,
            screenType: screentype,
          ),
          CustomListTile(
            title: "Sync Interns",
            subtitle: "Web Developer Intern",
            leadingicon: syncinterns,
            url: syncinternsurl,
            screenType: screentype,
          ),
          CustomListTile( 
            title: "Brototype",
            subtitle: "Campus Ambassedor", 
            leadingicon: brototype,
            url: brototypeurl,
            screenType: screentype,
          ),
        ],
      ),
    );
  }
}
