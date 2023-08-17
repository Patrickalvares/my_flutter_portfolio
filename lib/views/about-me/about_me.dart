import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/views/about-me/desktop_about_me.dart';
import 'package:my_flutter_portfolio/views/about-me/mobile_about_me.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 1920),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (size.width > 970) {
            return const DesktopAboutMe();
          } else {
            return const MobileAboutMe();
          }
        },
      ),
    );
  }
}
