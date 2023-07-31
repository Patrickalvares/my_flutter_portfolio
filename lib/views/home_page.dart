import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/globals/app_colors.dart';
import 'package:my_flutter_portfolio/globals/app_text_style.dart';
import 'package:my_flutter_portfolio/globals/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            Text(
              'Portfólio',
              style: AppTextStyles.headerTextStyle()
                  .copyWith(fontWeight: FontWeight.normal, fontSize: 30),
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
                        CircleAvatar(
                          maxRadius: 24,
                          backgroundColor: AppColors.themeColor,
                        )
                      ],
                    )
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
