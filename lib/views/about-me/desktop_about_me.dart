import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/globals/app_assets.dart';
import 'package:my_flutter_portfolio/globals/app_colors.dart';
import 'package:my_flutter_portfolio/globals/app_text_style.dart';

import '../../components/animated_button.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 200),
        child: Row(
          children: [
            Image.asset(
              AppAssets.myPhoto,
              height: 450,
              width: 400,
            ),
            const SizedBox(height: 25),
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
                  FadeInLeft(
                    duration: const Duration(milliseconds: 1600),
                    child: Text(
                      'ouiashdoashdaoisdjhasdhcjna jha jao haoiushsdoih aoasij aoihdjaoidyhiouweha '
                      'io aiohdo ashj oaishdoaiushdaousyd aos aoisyudaoisjd ioasudhf apjfd osidjfh '
                      'oisudfh posiduf opsidhjfsopiidfhopisuqwpie opqpuqw poiqwu qpiw uqpw uqpwi',
                      style: AppTextStyles.normalStyle(),
                    ),
                  ),
                  const SizedBox(width: 15),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1500),
                    delay: const Duration(milliseconds: 6800),
                    child: const AnimatedButton(
                      buttonName: 'Leia Mais',
                    ),
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
