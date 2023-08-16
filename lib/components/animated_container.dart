import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:my_flutter_portfolio/constants/app_text_style.dart';

class InfoAnimatedConatiner extends StatefulWidget {
  final String title;
  final String imageAsset;
  final Text serviceText;
  final bool hover;

  InfoAnimatedConatiner({
    super.key,
    required this.title,
    required this.imageAsset,
    required this.hover,
    required this.serviceText,
  });

  @override
  State<InfoAnimatedConatiner> createState() => _InfoAnimatedConatinerState();
}

class _InfoAnimatedConatinerState extends State<InfoAnimatedConatiner> {
  final onHoverActive = Matrix4.identity()..translate(0, -10, 0);
  final onHoverRemove = Matrix4.identity()..translate(0, 0, 0);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: AnimatedContainer(
        width: widget.hover ? 450 : 435,
        height: (size.width > 1020)
            ? (widget.hover ? 450 : 435)
            : (widget.hover ? 500 : 485),
        alignment: Alignment.center,
        transform: widget.hover ? onHoverActive : onHoverRemove,
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              widget.imageAsset,
              width: 55,
              height: 50,
              color: widget.hover ? AppColors.hoverColor : AppColors.themeColor,
            ),
            const SizedBox(height: 30),
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: AppTextStyles.montseratStyle(color: Colors.white)
                  .copyWith(fontStyle: widget.hover ? FontStyle.italic : null),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12),
              child: Expanded(child: widget.serviceText),
            ),
          ],
        ),
      ),
    );
  }
}
