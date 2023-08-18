import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/constants/app_assets.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:my_flutter_portfolio/constants/app_text_style.dart';
import 'package:my_flutter_portfolio/constants/app_texts.dart';

class DesktopAboutMe extends StatelessWidget {
  const DesktopAboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      color: AppColors.backgroundColor2,
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: (size.width > 1450) ? 200 : size.width * 0.06),
        child: Row(
          children: [
            Image.asset(
              AppAssets.dev,
              height: 350,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: SizedBox(
                height: 520,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 1.0,
                  width: 20.0,
                ),
              ),
            ),
            const SizedBox(width: 25),
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
                      style: AppTextStyles.montseratStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 6),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: FadeInLeft(
                        duration: const Duration(milliseconds: 1600),
                        child: AppTexts.aboutMeText),
                  ),
                  const SizedBox(width: 15),
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
    );
  }
}
