import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components/mockups.dart';
import 'package:my_flutter_portfolio/constants/app_assets.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:my_flutter_portfolio/constants/app_external_links.dart';

class MobileMiscMockups extends StatelessWidget {
  const MobileMiscMockups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.1),
      decoration: BoxDecoration(color: AppColors.backgroundColor2),
      child: Column(
        children: [
          Mockup(
            title: 'Tela de login: Tinder',
            image: AppAssets.tinderMockup,
            github: AppLinks.tinderMockup,
          ),
          const SizedBox(height: 25),
          Mockup(
            title: 'App de Carteira',
            image: AppAssets.financeMockup,
            github: AppLinks.financeMockup,
          ),
          const SizedBox(height: 25),
          Mockup(
            title: 'Instagram',
            image: AppAssets.instagramMockup,
            github: AppLinks.instagramMockup,
          ),
          const SizedBox(height: 25),
          Mockup(
            title: 'Tela de login: Finanças ',
            image: AppAssets.loginMockup,
            github: AppLinks.loginMockup,
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
