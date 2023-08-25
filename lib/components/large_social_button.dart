import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:my_flutter_portfolio/constants/app_text_style.dart';
import 'package:url_launcher/url_launcher.dart';

class LargeSocialButton extends StatefulWidget {
  final String imageAsset;
  final double imageWidth;
  final double imageHeight;
  final Color color;
  final Uri externalLink;
  final String socialName;

  const LargeSocialButton({
    super.key,
    required this.imageAsset,
    required this.imageWidth,
    required this.imageHeight,
    required this.color,
    required this.externalLink,
    required this.socialName,
  });

  @override
  State<LargeSocialButton> createState() => _LargeSocialButtonState();
}

class _LargeSocialButtonState extends State<LargeSocialButton> {
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
        scale: ishover ? 1.02 : 1.0,
        child: InkWell(
          onTap: () async {
            if (!await launchUrl(widget.externalLink)) {
              throw Exception('Could not launch ${widget.externalLink}');
            }
          },
          child: Container(
            width: 150,
            height: 46.5,
            decoration: BoxDecoration(
              color: ishover ? AppColors.hoverColor : AppColors.themeColor,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Image.asset(
                    widget.imageAsset,
                    width: widget.imageWidth,
                    height: widget.imageHeight,
                    color: widget.color,
                    fit: BoxFit.contain,
                  ),
                ),
                const Spacer(),
                const SizedBox(width: 10),
                Text(
                  widget.socialName,
                  style: AppTextStyles.headerTextStyle(),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
