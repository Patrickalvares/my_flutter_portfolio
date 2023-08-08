import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/globals/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialButton extends StatefulWidget {
  final String imageAsset;
  final double imageWidth;
  final double imageHeight;
  final Color color;
  final Uri externalLink;

  const SocialButton({
    super.key,
    required this.imageAsset,
    required this.imageWidth,
    required this.imageHeight,
    required this.color,
    required this.externalLink,
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
        scale: ishover ? 1.1 : 1.0,
        child: InkWell(
          onTap: () async {
            if (!await launchUrl(widget.externalLink)) {
              throw Exception('Could not launch ${widget.externalLink}');
            }
          },
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
      ),
    );
  }
}
