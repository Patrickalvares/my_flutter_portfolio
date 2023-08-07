import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components/animated_container.dart';
import 'package:my_flutter_portfolio/globals/app_assets.dart';
import 'package:my_flutter_portfolio/globals/app_colors.dart';
import 'package:my_flutter_portfolio/globals/app_text_style.dart';

class PhoneMyServices extends StatefulWidget {
  const PhoneMyServices({super.key});

  @override
  State<PhoneMyServices> createState() => _PhoneMyServicesState();
}

class _PhoneMyServicesState extends State<PhoneMyServices> {
  bool isContainerOneHover = false;
  bool isContainerTwoHover = false;
  bool isContainerThreeHover = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 2.2,
      color: AppColors.backgroundColor,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 12),
      child: Column(
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) => setState(() {
                  isContainerOneHover = value;
                }),
                child: InfoAnimatedConatiner(
                    hover: isContainerOneHover,
                    imageAsset: AppAssets.code,
                    title: 'Desenvolvimento de Aplicativos'),
              ),
              const SizedBox(height: 18),
              InkWell(
                onTap: () {},
                onHover: (value) => setState(() {
                  isContainerTwoHover = value;
                }),
                child: InfoAnimatedConatiner(
                    hover: isContainerTwoHover,
                    imageAsset: AppAssets.brush,
                    title: 'UX/UI'),
              ),
              const SizedBox(height: 18),
              InkWell(
                onTap: () {},
                onHover: (value) => setState(() {
                  isContainerThreeHover = value;
                }),
                child: InfoAnimatedConatiner(
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
