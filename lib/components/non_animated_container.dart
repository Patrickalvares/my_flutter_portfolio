import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:my_flutter_portfolio/constants/app_text_style.dart';

class InfoNonAnimatedConatiner extends StatefulWidget {
  final String title;
  final String imageAsset;
  final Text serviceText;

  InfoNonAnimatedConatiner({
    super.key,
    required this.title,
    required this.imageAsset,
    required this.serviceText,
  });

  @override
  State<InfoNonAnimatedConatiner> createState() =>
      _InfoNonAnimatedConatinerState();
}

class _InfoNonAnimatedConatinerState extends State<InfoNonAnimatedConatiner> {
  final onHoverActive = Matrix4.identity()..translate(0, -10, 0);
  final onHoverRemove = Matrix4.identity()..translate(0, 0, 0);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: AnimatedContainer(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: AppColors.hoverColor, width: 4),
            boxShadow: const [
              BoxShadow(
                color: Colors.black54,
                spreadRadius: 4.0,
                blurRadius: 4.5,
                offset: Offset(3.0, 4.5),
              ),
            ],
            color: AppColors.backgroundColor3),
        duration: const Duration(milliseconds: 600),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              widget.imageAsset,
              width: 55,
              height: 50,
              color: AppColors.hoverColor,
            ),
            const SizedBox(height: 30),
            Text(widget.title,
                textAlign: TextAlign.center,
                style: AppTextStyles.montseratStyle(color: Colors.white)
                    .copyWith(fontStyle: FontStyle.italic)),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12),
              child: widget.serviceText,
            ),
          ],
        ),
      ),
    );
  }
}
