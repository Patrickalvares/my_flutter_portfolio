import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components/mockups.dart';
import 'package:my_flutter_portfolio/constants/app_assets.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:my_flutter_portfolio/constants/app_external_links.dart';

class DesktopMiscMockups extends StatelessWidget {
  const DesktopMiscMockups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: (size.width > 900) ? 700 : 1000,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.1),
      decoration: BoxDecoration(color: AppColors.backgroundColor2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Mockup(
            title: 'Tela de login: Tinder',
            image: AppAssets.tinderMockup,
            github: AppLinks.tinderMockup,
          ),
          Spacer(),
          Mockup(
            title: 'App de Carteira',
            image: AppAssets.financeMockup,
            github: AppLinks.financeMockup,
          ),
          Spacer(),
          Mockup(
            title: 'Instagram',
            image: AppAssets.instagramMockup,
            github: AppLinks.instagramMockup,
          ),
          Spacer(),
          Mockup(
            title: 'Tela de login: Finanças ',
            image: AppAssets.loginMockup,
            github: AppLinks.loginMockup,
          ),
        ],
      ),
    );
  }
}