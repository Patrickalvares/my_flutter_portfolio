import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components/mockups.dart';
import 'package:my_flutter_portfolio/constants/app_assets.dart';
import 'package:my_flutter_portfolio/constants/app_external_links.dart';

class MobileMiscMockups extends StatelessWidget {
  const MobileMiscMockups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        width: double.infinity,
        height: 2600,
        alignment: Alignment.center,
        padding:
            EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.1),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0XFF004953),
            Color.fromARGB(255, 1, 67, 76),
            Color(0xff003153),
          ],
        )),
        child: Column(
          children: [
            Mockup(
              title: 'Tela de login: Tinder',
              image: AppAssets.tinderMockup,
              github: AppLinks.tinderMockup,
            ),
            const Spacer(),
            Mockup(
              title: 'App de Carteira',
              image: AppAssets.financeMockup,
              github: AppLinks.financeMockup,
            ),
            const Spacer(),
            Mockup(
              title: 'Instagram',
              image: AppAssets.instagramMockup,
              github: AppLinks.instagramMockup,
            ),
            const Spacer(),
            Mockup(
              title: 'Tela de login: Finanças ',
              image: AppAssets.loginMockup,
              github: AppLinks.loginMockup,
            )
          ],
        ),
      ),
    );
  }
}
