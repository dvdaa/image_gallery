import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_gallery/gen/assets.gen.dart';
import 'package:image_gallery/style.dart';

class AboutMeScreen extends StatefulWidget {
  const AboutMeScreen({
    super.key,
  });

  @override
  State<AboutMeScreen> createState() => _AboutMeScreenState();
}

class _AboutMeScreenState extends State<AboutMeScreen> {
  String bioText = "";

  void getBioText() async {
    String response;
    response = await rootBundle.loadString(Assets.texts.kayaMuLlerText);
    setState(() {
      bioText =
          response.substring(1, response.length - 1).replaceAll('\\n', '\n');
    });
  }

  @override
  Widget build(BuildContext context) {
    getBioText();
    return ListView(
      // shrinkWrap: true,
      padding: EdgeInsets.all(24),

      children: [
        Center(
          child: SizedBox(
            height: 200,
            child: AspectRatio(
              aspectRatio: 1,
              child: ClipOval(
                child: Image.asset(Assets.images.kaya.path, fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 28),
            child: Column(
              children: [
                Text(
                  "Kaya Müller",
                  style: TextStyle(
                    fontSize: Style.titleFontSize,
                    fontWeight: Style.titleFontWeight,
                  ),
                ),
                Text(
                  "Fotograf",
                  style: TextStyle(
                    fontSize: Style.subtitleFontSize,
                    fontWeight: Style.subtitleFontWeight,
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(
          bioText,
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: Style.bodyFontSize,
          ),
        )
      ],
    );
  }
}
