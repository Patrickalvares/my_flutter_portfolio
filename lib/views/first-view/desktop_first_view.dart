import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components/animated_button.dart';
import 'package:my_flutter_portfolio/components/profile_animation.dart';
import 'package:my_flutter_portfolio/components/social_button.dart';
import 'package:my_flutter_portfolio/globals/app_assets.dart';
import 'package:my_flutter_portfolio/globals/app_external_links.dart';
import 'package:my_flutter_portfolio/globals/app_text_style.dart';

class DesktopFirstView extends StatelessWidget {
  const DesktopFirstView({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
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
                      style: AppTextStyles.headingStyles(),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      FadeInLeft(
                        duration: const Duration(milliseconds: 1500),
                        delay: const Duration(milliseconds: 2700),
                        child: AnimatedTextKit(
                          repeatForever: true,
                          animatedTexts: [
                            TyperAnimatedText('Desenvolvedor Mobile',
                                textStyle: AppTextStyles.montseratStyle(
                                    color: Colors.yellow)),
                            TyperAnimatedText('Desenvolvedor Flutter',
                                textStyle: AppTextStyles.montseratStyle(
                                    color: const Color.fromARGB(
                                        255, 32, 154, 255))),
                            TyperAnimatedText('Estudante de Eng. de Software',
                                textStyle: AppTextStyles.montseratStyle(
                                    color: Colors.orange)),
                            TyperAnimatedText('Amante da Tecnologia',
                                textStyle: AppTextStyles.montseratStyle(
                                    color: Colors.red)),
                            TyperAnimatedText('Aluno Dedicado',
                                textStyle: AppTextStyles.montseratStyle(
                                    color: Colors.purple)),
                            TyperAnimatedText('Futuro Tech Leader',
                                textStyle: AppTextStyles.montseratStyle(
                                    color: Colors.green)),
                          ],
                          pause: const Duration(milliseconds: 1000),
                          stopPauseOnTap: true,
                          displayFullTextOnTap: true,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: size.width * 0.5,
                    child: FadeInUp(
                      duration: const Duration(milliseconds: 1500),
                      delay: const Duration(milliseconds: 3700),
                      child: Text(
                        'ouiashdoashdaoisdjhasdhcjna jha jao haoiushsdoih aoasij aoihdjaoidyhiouweha '
                        'io aiohdo ashj oaishdoaiushdaousyd aos aoisyudaoisjd ioasudhf apjfd osidjfh '
                        'oisudfh posiduf opsidhjfsopiidfhopisuqwpie opqpuqw poiqwu qpiw uqpw uqpwi',
                        style: AppTextStyles.normalStyle(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 22),
                  Row(
                    children: [
                      FadeIn(
                        duration: const Duration(milliseconds: 1500),
                        delay: const Duration(milliseconds: 5200),
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
                        delay: const Duration(milliseconds: 5800),
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
                        delay: const Duration(milliseconds: 6300),
                        child: SocialButton(
                          externalLink: AppLinks.alura,
                          imageAsset: AppAssets.Alura,
                          imageWidth: 24,
                          imageHeight: 24,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 12),
                      FadeIn(
                        duration: const Duration(milliseconds: 1500),
                        delay: const Duration(milliseconds: 6800),
                        child: SocialButton(
                          externalLink: AppLinks.whatsapp,
                          imageAsset: AppAssets.whatsapp,
                          imageWidth: 24,
                          imageHeight: 24,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 24),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1500),
                        delay: const Duration(milliseconds: 7300),
                        child: const AnimatedButton(
                          buttonName: 'Download do Currículo',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 20),
            Column(
              children: [
                ProfileAnimation(
                  size: size,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
