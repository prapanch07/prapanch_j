import 'package:url_launcher/url_launcher.dart';

class UrlController {
  Future<void> onLaunchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw "error";
    }
  }
}
