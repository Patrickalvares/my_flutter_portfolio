import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components/animated_container.dart';
import 'package:my_flutter_portfolio/constants/app_assets.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:my_flutter_portfolio/constants/app_text_style.dart';

class TabletMyServices extends StatefulWidget {
  const TabletMyServices({super.key});

  @override
  State<TabletMyServices> createState() => _TabletMyServicesState();
}

class _TabletMyServicesState extends State<TabletMyServices> {
  bool isContainerOneHover = false;
  bool isContainerTwoHover = false;
  bool isContainerThreeHover = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 1120,
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
              Row(
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
                  const SizedBox(width: 18),
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
                  const SizedBox(width: 18),
                ],
              ),
              const SizedBox(height: 20),
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
