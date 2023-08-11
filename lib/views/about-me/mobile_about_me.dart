import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/constants/app_assets.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:my_flutter_portfolio/constants/app_text_style.dart';
import 'package:my_flutter_portfolio/constants/app_texts.dart';

class MobileAboutMe extends StatelessWidget {
  const MobileAboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1150,
      color: AppColors.backgroundColor2,
      alignment: Alignment.center,
      child: Column(
        children: [
          Image.asset(
            AppAssets.dev,
            height: 450,
            width: 400,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeInRight(
                        duration: const Duration(milliseconds: 1500),
                        delay: const Duration(milliseconds: 1700),
                        child: RichText(
                          text: TextSpan(
                              text: 'Sobre ',
                              style: AppTextStyles.headingStyles().copyWith(
                                fontSize: 30,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Mim',
                                  style: AppTextStyles.headingStyles().copyWith(
                                    fontSize: 30,
                                    color: AppColors.robinEdgeBlue,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      const SizedBox(height: 6),
                      FadeInRight(
                        duration: const Duration(milliseconds: 1200),
                        child: Text(
                          'Desenvolvedor Flutter',
                          style:
                              AppTextStyles.montseratStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(width: 6),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: FadeInLeft(
                            duration: const Duration(milliseconds: 1600),
                            child: AppTexts.aboutMeText),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: FadeInLeft(
                            duration: const Duration(milliseconds: 1600),
                            child: AppTexts.stacks),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
