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
            title: 'Login: Tinder',
            image: AppAssets.tinderMockup,
            github: AppLinks.tinderMockup,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25, bottom: 12),
            child: Divider(
              color: Colors.grey,
              thickness: 1.0,
              height: 20.0,
            ),
          ),
          Mockup(
            title: 'App de Carteira',
            image: AppAssets.financeMockup,
            github: AppLinks.financeMockup,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25, bottom: 12),
            child: Divider(
              color: Colors.grey,
              thickness: 1.0,
              height: 20.0,
            ),
          ),
          Mockup(
            title: 'Instagram',
            image: AppAssets.instagramMockup,
            github: AppLinks.instagramMockup,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25, bottom: 12),
            child: Divider(
              color: Colors.grey,
              thickness: 1.0,
              height: 20.0,
            ),
          ),
          Mockup(
            title: 'Login: Finanças ',
            image: AppAssets.loginMockup,
            github: AppLinks.loginMockup,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25, bottom: 12),
          ),
        ],
      ),
    );
  }
}
