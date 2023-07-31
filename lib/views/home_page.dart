import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components/social_button.dart';
import 'package:my_flutter_portfolio/globals/app_assets.dart';
import 'package:my_flutter_portfolio/globals/app_colors.dart';
import 'package:my_flutter_portfolio/globals/app_text_style.dart';
import 'package:my_flutter_portfolio/globals/constants.dart';

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
                Text(
                  'Feito por mim ultilizando Flutter',
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
            left: size.height * 0.2,
            right: size.height * 0.2),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello World, it\'s me',
                      style: AppTextStyles.montseratStyle(),
                    ),
                    Constants.sizedBox(height: 15),
                    Text(
                      'Patrick Alvares',
                      style: AppTextStyles.headingStyles(),
                    ),
                    Constants.sizedBox(height: 15),
                    Row(
                      children: [
                        AnimatedTextKit(
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
                        )
                      ],
                    ),
                    Constants.sizedBox(height: 15),
                    SizedBox(
                      width: size.width * 0.5,
                      child: Text(
                        'ouiashdoashdaoisdjhasdhcjna jha jao haoiushsdoih aoasij aoihdjaoidyhiouweha '
                        'io aiohdo ashj oaishdoaiushdaousyd aos aoisyudaoisjd ioasudhf apjfd osidjfh '
                        'oisudfh posiduf opsidhjfsopiidfhopisuqwpie op´qpuqw poiqwu qpiw uqpw uqpwi',
                        style: AppTextStyles.normalStyle(),
                      ),
                    ),
                    Constants.sizedBox(height: 22),
                    Row(
                      children: [
                        SocialButton(
                          imageAsset: AppAssets.facebook,
                          imageWidth: 24,
                          imageHeight: 20,
                          color: Colors.white,
                        ),
                        Constants.sizedBox(width: 12),
                        SocialButton(
                          imageAsset: AppAssets.linkedin,
                          imageWidth: 24,
                          imageHeight: 20,
                          color: Colors.white,
                        ),
                        Constants.sizedBox(width: 12),
                        SocialButton(
                          imageAsset: AppAssets.github,
                          imageWidth: 24,
                          imageHeight: 20,
                          color: Colors.white,
                        ),
                        Constants.sizedBox(width: 12),
                        SocialButton(
                          imageAsset: AppAssets.instagram,
                          imageWidth: 24,
                          imageHeight: 20,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Constants.sizedBox(height: 18),
                    MaterialButton(
                      onPressed: () {},
                      color: AppColors.themeColor,
                      hoverColor: AppColors.hoverColor,
                      elevation: 12,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 18),
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      height: 55,
                      minWidth: 120,
                      child: Text(
                        'Download do Currículo',
                        style: AppTextStyles.headerTextStyle(),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
