import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/globals/app_colors.dart';

class SocialButton extends StatefulWidget {
  final String imageAsset;
  final double imageWidth;
  final double imageHeight;
  final Color color;

  SocialButton({
    super.key,
    required this.imageAsset,
    required this.imageWidth,
    required this.imageHeight,
    required this.color,
  });

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  bool ishover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          ishover = true;
        });
      },
      onExit: (_) {
        setState(() {
          ishover = false;
        });
      },
      child: Transform.scale(
        scale: ishover
            ? 1.1
            : 1.0, // Aumenta o tamanho em 10% quando o hover é verdadeiro
        child: CircleAvatar(
          maxRadius: 24,
          backgroundColor:
              ishover ? AppColors.hoverColor : AppColors.themeColor,
          child: CircleAvatar(
            maxRadius: 20,
            backgroundColor: AppColors.backgroundColor,
            child: Image.asset(
              widget.imageAsset,
              width: widget.imageWidth,
              height: widget.imageHeight,
              color: widget.color,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
