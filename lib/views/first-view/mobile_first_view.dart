import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components/animated_button.dart';
import 'package:my_flutter_portfolio/components/profile_animation.dart';
import 'package:my_flutter_portfolio/components/social_button.dart';
import 'package:my_flutter_portfolio/constants/app_assets.dart';
import 'package:my_flutter_portfolio/constants/app_external_links.dart';
import 'package:my_flutter_portfolio/constants/app_text_style.dart';
import 'package:my_flutter_portfolio/constants/app_texts.dart';

class TabletFirstView extends StatelessWidget {
  const TabletFirstView({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding:
          EdgeInsets.only(top: size.height * 0.02, bottom: size.height * 0.04),
      child: Column(
        children: [
          Column(
            children: [
              ProfileAnimation(
                size: size,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeInDown(
                        duration: const Duration(milliseconds: 1500),
                        delay: const Duration(milliseconds: 700),
                        child: Text(
                          'Hello World, it\'s me',
                          style: AppTextStyles.montseratStyle(),
                        ),
                      ),
                      const SizedBox(height: 15),
                      FadeInRight(
                        duration: const Duration(milliseconds: 1500),
                        delay: const Duration(milliseconds: 1700),
                        child: Text(
                          'Patrick Alvares',
                          style: AppTextStyles.headingStyles()
                              .copyWith(fontSize: (size.width > 520) ? 36 : 25),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppTexts.rollingTitles,
                        ],
                      ),
                      const SizedBox(height: 22),
                      Row(
                        children: [
                          FadeIn(
                            duration: const Duration(milliseconds: 1500),
                            delay: const Duration(milliseconds: 3700),
                            child: SocialButton(
                              externalLink: AppLinks.linkedin,
                              imageAsset: AppAssets.linkedin,
                              imageWidth: 26,
                              imageHeight: 26,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 12),
                          FadeIn(
                            duration: const Duration(milliseconds: 1500),
                            delay: const Duration(milliseconds: 5200),
                            child: SocialButton(
                              externalLink: AppLinks.github,
                              imageAsset: AppAssets.github,
                              imageWidth: 26,
                              imageHeight: 26,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 12),
                          FadeIn(
                            duration: const Duration(milliseconds: 1500),
                            delay: const Duration(milliseconds: 5800),
                            child: SocialButton(
                              externalLink: AppLinks.alura,
                              imageAsset: AppAssets.alura,
                              imageWidth: 24,
                              imageHeight: 24,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 12),
                          FadeIn(
                            duration: const Duration(milliseconds: 1500),
                            delay: const Duration(milliseconds: 6300),
                            child: SocialButton(
                              externalLink: AppLinks.whatsapp,
                              imageAsset: AppAssets.whatsapp,
                              imageWidth: 24,
                              imageHeight: 24,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1500),
                        delay: const Duration(milliseconds: 6800),
                        child: const AnimatedButton(
                          buttonName: 'Download do Currículo',
                        ),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: size.width * 0.9,
                        child: FadeInUp(
                            duration: const Duration(milliseconds: 1500),
                            delay: const Duration(milliseconds: 7300),
                            child: AppTexts.introText),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
