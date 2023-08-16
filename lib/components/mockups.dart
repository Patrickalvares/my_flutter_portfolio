import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components/regular_github_button.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:my_flutter_portfolio/constants/app_text_style.dart';
import 'package:my_flutter_portfolio/constants/app_assets.dart'; // Importar para ter acesso ao ícone "share".

class Mockup extends StatefulWidget {
  final String title;
  final String image;
  final Uri github;

  const Mockup({
    super.key,
    required this.title,
    required this.image,
    required this.github,
  });

  @override
  State<Mockup> createState() => _MockupState();
}

class _MockupState extends State<Mockup> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Text(
          widget.title,
          style: AppTextStyles.montseratStyle().copyWith(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.normal),
        ),
        const SizedBox(
          height: 30,
        ),
        GestureDetector(
          onTap: () {
            _showImageDialog(context, widget.image);
          },
          child: MouseRegion(
            onEnter: (_) => setState(() => _isHovering = true),
            onExit: (_) => setState(() => _isHovering = false),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Opacity(
                  opacity: _isHovering ? 0.8 : 1.0,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(3, 3),
                        ),
                      ],
                    ),
                    height: 482.50,
                    width: 225.00,
                    child: Image.asset(
                      widget.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                if (_isHovering || size.width < 725)
                  CircleAvatar(
                      backgroundColor: AppColors.hoverColor,
                      radius: 30,
                      child: Image.asset(AppAssets.expandImage,
                          height: 50, width: 50)),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        RegularGithubButton(link: widget.github),
      ],
    );
  }

  void _showImageDialog(BuildContext context, String imagePath) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: GestureDetector(
            child: Image.asset(imagePath),
            onTap: () => Navigator.pop(context, true)),
      ),
    );
  }
}
