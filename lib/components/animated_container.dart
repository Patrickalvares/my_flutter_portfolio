import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components/animated_button.dart';
import 'package:my_flutter_portfolio/globals/app_assets.dart';
import 'package:my_flutter_portfolio/globals/app_colors.dart';
import 'package:my_flutter_portfolio/globals/app_text_style.dart';
import 'package:my_flutter_portfolio/globals/constants.dart';

class InfoAnimatedConatiner extends StatefulWidget {
  final String title;
  final String imageAsset;
  const InfoAnimatedConatiner(
      {super.key, required this.title, required this.imageAsset});

  @override
  State<InfoAnimatedConatiner> createState() => _InfoAnimatedConatinerState();
}

class _InfoAnimatedConatinerState extends State<InfoAnimatedConatiner> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 450,
      height: 450,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            spreadRadius: 4.0,
            blurRadius: 4.5,
            offset: Offset(3.0, 4.5),
          ),
        ],
        color: AppColors.backgroundColor2,
      ),
      duration: const Duration(milliseconds: 600),
      child: Column(
        children: [
          Image.asset(
            widget.imageAsset,
            width: 55,
            height: 50,
            color: AppColors.themeColor,
          ),
          Constants.sizedBox(height: 30),
          Text(
            widget.title,
            style: AppTextStyles.montseratStyle(color: Colors.white),
          ),
          Constants.sizedBox(height: 12),
          Text(
            'oaiushdaousyd aos aoisyudaoisjd ioasudhf apjfd osidjfh '
            'oisudfh posiduf opsidhjfsopiidfhopisuqwpie opqpuqw poiqwu qpiw uqpw uqpw',
            style: AppTextStyles.normalStyle(),
            textAlign: TextAlign.center,
          ),
          Constants.sizedBox(height: 12),
          const AnimatedButton(
            buttonName: 'Leia mais',
          )
        ],
      ),
    );
  }
}
