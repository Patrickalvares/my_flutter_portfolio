import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final Color outerBackgroundColor;
  final Color innerBackgroundColor;
  final String imageAsset;
  final double imageWidth;
  final double imageHeight;
  final Color color;

  const SocialButton({
    super.key,
    required this.outerBackgroundColor,
    required this.innerBackgroundColor,
    required this.imageAsset,
    required this.imageWidth,
    required this.imageHeight,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 24,
      backgroundColor: outerBackgroundColor,
      child: CircleAvatar(
        maxRadius: 20,
        backgroundColor: innerBackgroundColor,
        child: Image.asset(
          imageAsset,
          width: imageWidth,
          height: imageHeight,
          color: color,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
