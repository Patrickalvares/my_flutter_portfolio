import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components/animated_button.dart';
import 'package:my_flutter_portfolio/globals/app_colors.dart';
import 'package:my_flutter_portfolio/globals/app_text_style.dart';
import 'package:my_flutter_portfolio/globals/constants.dart';

class InfoAnimatedConatiner extends StatefulWidget {
  final String title;
  final String imageAsset;
  bool hover;

  InfoAnimatedConatiner({
    super.key,
    required this.title,
    required this.imageAsset,
    required this.hover,
  });

  @override
  State<InfoAnimatedConatiner> createState() => _InfoAnimatedConatinerState();
}

class _InfoAnimatedConatinerState extends State<InfoAnimatedConatiner> {
  final onHoverActive = Matrix4.identity()..translate(0, -10, 0);
  final onHoverRemove = Matrix4.identity()..translate(0, 0, 0);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: widget.hover ? 450 : 435,
      height: widget.hover ? 450 : 435,
      alignment: Alignment.center,
      transform: widget.hover ? onHoverActive : onHoverRemove,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: widget.hover
            ? Border.all(color: AppColors.hoverColor, width: 4)
            : null,
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            spreadRadius: 4.0,
            blurRadius: 4.5,
            offset: Offset(3.0, 4.5),
          ),
        ],
        color: widget.hover
            ? AppColors.backgroundColor3
            : AppColors.backgroundColor2,
      ),
      duration: const Duration(milliseconds: 600),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            widget.imageAsset,
            width: 55,
            height: 50,
            color: widget.hover ? AppColors.hoverColor : AppColors.themeColor,
          ),
          Constants.sizedBox(height: 30),
          Text(
            widget.title,
            textAlign: TextAlign.center,
            style: AppTextStyles.montseratStyle(color: Colors.white)
                .copyWith(fontStyle: widget.hover ? FontStyle.italic : null),
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
