import 'package:flutter/material.dart';
import 'package:prapanch_j/utils/constants.dart';
import 'package:prapanch_j/widgets/icon_button.dart';
import 'package:prapanch_j/widgets/list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

class ExperienceSection extends StatelessWidget {
  final String screentype;
  const ExperienceSection({super.key, required this.screentype});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:10.0),
      child: Column(
        children: [
          CustomListTile(
            title: "casamedia",
            subtitle: "Flutter Developer Intern",
            leadingicon: brototype,
            screenType: screentype,
          ),
          CustomListTile(
            title: "Sync Interns",
            subtitle: "Web Developer Intern",
            leadingicon: syncinterns,
            screenType: screentype,
          ),
          CustomListTile(
            title: "Brototype",
            subtitle: "Campus Ambassedor",
            leadingicon: brototype,
            screenType: screentype,
          ),
        ],
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
