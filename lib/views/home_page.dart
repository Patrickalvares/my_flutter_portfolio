import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components/animated_button.dart';
import 'package:my_flutter_portfolio/components/profile_animation.dart';
import 'package:my_flutter_portfolio/components/social_button.dart';
import 'package:my_flutter_portfolio/globals/app_assets.dart';
import 'package:my_flutter_portfolio/globals/app_colors.dart';
import 'package:my_flutter_portfolio/globals/app_text_style.dart';
import 'package:my_flutter_portfolio/globals/constants.dart';
import 'package:my_flutter_portfolio/views/about_me.dart';
import 'package:my_flutter_portfolio/views/my_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        toolbarHeight: 90,
        titleSpacing: 100,
        elevation: 2,
        bottomOpacity: 23,
        title: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 60,
          ),
          child: Row(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Meu Portfólio',
                  style: AppTextStyles.headerTextStyle()
                      .copyWith(fontWeight: FontWeight.normal, fontSize: 30),
                ),
                const Text(
                  'Feito por mim ultilizando Flutter Web',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )
              ],
            ),
            const Spacer(),
            const SizedBox(
              width: 40,
            ),
            Text('início', style: AppTextStyles.headerTextStyle()),
            const SizedBox(
              width: 40,
            ),
            Text('Sobre Mim', style: AppTextStyles.headerTextStyle()),
            const SizedBox(
              width: 40,
            ),
            Text('Serviços', style: AppTextStyles.headerTextStyle()),
            const SizedBox(
              width: 40,
            ),
            Text('Portfólio', style: AppTextStyles.headerTextStyle()),
            const SizedBox(
              width: 40,
            ),
            Text('Contacte-me', style: AppTextStyles.headerTextStyle()),
            const SizedBox(
              width: 40,
            ),
          ]),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
            top: size.height * 0.3,
            left: size.height * 0.0,
            right: size.height * 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                        Constants.sizedBox(height: 15),
                        FadeInRight(
                          duration: const Duration(milliseconds: 1500),
                          delay: const Duration(milliseconds: 1700),
                          child: Text(
                            'Patrick Alvares',
                            style: AppTextStyles.headingStyles(),
                          ),
                        ),
                        Constants.sizedBox(height: 15),
                        Row(
                          children: [
                            FadeInLeft(
                              duration: const Duration(milliseconds: 1500),
                              delay: const Duration(milliseconds: 2700),
                              child: AnimatedTextKit(
                                repeatForever: true,
                                animatedTexts: [
                                  TyperAnimatedText('Desenvolvedor Flutter',
                                      textStyle: AppTextStyles.montseratStyle(
                                          color: Colors.blue.shade400)),
                                  TyperAnimatedText('Desenvolvedor Mobile',
                                      textStyle: AppTextStyles.montseratStyle(
                                          color: Colors.yellow)),
                                  TyperAnimatedText('Engenheiro de Software',
                                      textStyle: AppTextStyles.montseratStyle(
                                          color: Colors.red)),
                                ],
                                pause: const Duration(milliseconds: 1000),
                                stopPauseOnTap: true,
                                displayFullTextOnTap: true,
                              ),
                            )
                          ],
                        ),
                        Constants.sizedBox(height: 15),
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
                        Constants.sizedBox(height: 22),
                        Row(
                          children: [
                            FadeIn(
                              duration: const Duration(milliseconds: 1500),
                              delay: const Duration(milliseconds: 4700),
                              child: SocialButton(
                                imageAsset: AppAssets.facebook,
                                imageWidth: 24,
                                imageHeight: 20,
                                color: Colors.white,
                              ),
                            ),
                            Constants.sizedBox(width: 12),
                            FadeIn(
                              duration: const Duration(milliseconds: 1500),
                              delay: const Duration(milliseconds: 5200),
                              child: SocialButton(
                                imageAsset: AppAssets.linkedin,
                                imageWidth: 24,
                                imageHeight: 20,
                                color: Colors.white,
                              ),
                            ),
                            Constants.sizedBox(width: 12),
                            FadeIn(
                              duration: const Duration(milliseconds: 1500),
                              delay: const Duration(milliseconds: 5800),
                              child: SocialButton(
                                imageAsset: AppAssets.github,
                                imageWidth: 24,
                                imageHeight: 20,
                                color: Colors.white,
                              ),
                            ),
                            Constants.sizedBox(width: 12),
                            FadeIn(
                              duration: const Duration(milliseconds: 1500),
                              delay: const Duration(milliseconds: 6300),
                              child: SocialButton(
                                imageAsset: AppAssets.instagram,
                                imageWidth: 24,
                                imageHeight: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Constants.sizedBox(height: 18),
                        FadeInUp(
                          duration: const Duration(milliseconds: 1500),
                          delay: const Duration(milliseconds: 6800),
                          child: const AnimatedButton(
                            buttonName: 'Download do Currículo',
                          ),
                        ),
                      ],
                    ),
                    Constants.sizedBox(width: 20),
                    const Column(
                      children: [
                        ProfileAnimation(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Constants.sizedBox(height: 220),
            const AboutMe(),
            const MyServices(),
          ],
        ),
      ),
    );
  }
}
