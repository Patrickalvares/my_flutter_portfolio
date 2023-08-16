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
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: AppColors.backgroundColor2,
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
            top: size.height * 0.02, bottom: size.height * 0.04, right: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                AppAssets.dev,
                width: size.width * 0.9,
              ),
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
                                    style:
                                        AppTextStyles.headingStyles().copyWith(
                                      fontSize: 30,
                                      color: AppColors.robinEdgeBlue,
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: FadeInRight(
                            duration: const Duration(milliseconds: 1200),
                            child: Text(
                              'Desenvolvedor Flutter',
                              style: AppTextStyles.montseratStyle(
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: FadeInLeft(
                              duration: const Duration(milliseconds: 1600),
                              child: AppTexts.aboutMeText),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 35),
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
      ),
    );
  }
}
