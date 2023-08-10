import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:my_flutter_portfolio/constants/app_text_style.dart';
import 'package:url_launcher/url_launcher.dart';

class RegularGithubButton extends StatefulWidget {
  final Uri link;

  const RegularGithubButton({super.key, required this.link});

  @override
  RegularGithubButtonState createState() => RegularGithubButtonState();
}

class RegularGithubButtonState extends State<RegularGithubButton>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () async {
        if (!await launchUrl(widget.link)) {
          throw Exception('Could not launch ${widget.link}');
        }
      },
      color: AppColors.themeColor,
      hoverColor: AppColors.hoverColor,
      elevation: 12,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      height: 55,
      minWidth: 120,
      child: Text(
        'Repositório',
        style: AppTextStyles.headerTextStyle(),
      ),
    );
  }
}
