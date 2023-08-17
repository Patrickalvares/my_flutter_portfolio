import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components/mockups.dart';
import 'package:my_flutter_portfolio/constants/app_assets.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:my_flutter_portfolio/constants/app_external_links.dart';
import 'package:my_flutter_portfolio/constants/app_text_style.dart';

class DesktopMiscMockups extends StatelessWidget {
  const DesktopMiscMockups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.1),
      decoration: BoxDecoration(color: AppColors.backgroundColor2),
      child: Column(
        children: [
          Center(
            child: Text(
              'leituras de mockups',
              style: AppTextStyles.headingStyles().copyWith(
                fontSize: 30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Mockup(
                  title: 'Login: Tinder',
                  image: AppAssets.tinderMockup,
                  github: AppLinks.tinderMockup,
                ),
                const SizedBox(
                  height: 520,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1.0,
                    width: 20.0,
                  ),
                ),
                Mockup(
                  title: 'App de Carteira',
                  image: AppAssets.financeMockup,
                  github: AppLinks.financeMockup,
                ),
                const SizedBox(
                  height: 520,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1.0,
                    width: 20.0,
                  ),
                ),
                Mockup(
                  title: 'Instagram',
                  image: AppAssets.instagramMockup,
                  github: AppLinks.instagramMockup,
                ),
                const SizedBox(
                  height: 520,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1.0,
                    width: 20.0,
                  ),
                ),
                Mockup(
                  title: 'Login: Finanças ',
                  image: AppAssets.loginMockup,
                  github: AppLinks.loginMockup,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
