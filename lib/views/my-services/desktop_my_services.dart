import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components/animated_container.dart';
import 'package:my_flutter_portfolio/constants/app_assets.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:my_flutter_portfolio/constants/app_text_style.dart';
import 'package:my_flutter_portfolio/constants/app_texts.dart';

class DesktopMyServices extends StatefulWidget {
  const DesktopMyServices({super.key});

  @override
  State<DesktopMyServices> createState() => _DesktopMyServicesState();
}

class _DesktopMyServicesState extends State<DesktopMyServices> {
  bool isContainerOneHover = false;
  bool isContainerTwoHover = false;
  bool isContainerThreeHover = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.backgroundColor,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeInRight(
            duration: const Duration(milliseconds: 1500),
            delay: const Duration(milliseconds: 1700),
            child: RichText(
              text: TextSpan(
                  text: 'Meus ',
                  style: AppTextStyles.headingStyles().copyWith(
                    fontSize: 30,
                  ),
                  children: [
                    TextSpan(
                      text: 'Serviços',
                      style: AppTextStyles.headingStyles().copyWith(
                        fontSize: 30,
                        color: AppColors.robinEdgeBlue,
                      ),
                    ),
                  ]),
            ),
          ),
          const SizedBox(height: 60),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) => setState(() {
                  isContainerOneHover = value;
                }),
                child: InfoAnimatedConatiner(
                    serviceText: AppTexts.appDeveloper,
                    hover: isContainerOneHover,
                    imageAsset: AppAssets.code,
                    title: 'Desenvolvimento de Aplicativos'),
              ),
              const SizedBox(width: 18),
              InkWell(
                onTap: () {},
                onHover: (value) => setState(() {
                  isContainerTwoHover = value;
                }),
                child: InfoAnimatedConatiner(
                    serviceText: AppTexts.uxUi,
                    hover: isContainerTwoHover,
                    imageAsset: AppAssets.brush,
                    title: 'UX/UI'),
              ),
              const SizedBox(width: 18),
              InkWell(
                onTap: () {},
                onHover: (value) => setState(() {
                  isContainerThreeHover = value;
                }),
                child: InfoAnimatedConatiner(
                    serviceText: AppTexts.growing,
                    hover: isContainerThreeHover,
                    imageAsset: AppAssets.graph,
                    title: 'Crescimento'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
