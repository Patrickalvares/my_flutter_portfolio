import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components/regular_github_button.dart';
import 'package:my_flutter_portfolio/constants/app_text_style.dart';

class Mockup extends StatefulWidget {
  final String title;
  final String image;
  final Uri github;

  const Mockup(
      {super.key,
      required this.title,
      required this.image,
      required this.github});

  @override
  State<Mockup> createState() => _MockupState();
}

class _MockupState extends State<Mockup> {
  @override
  Widget build(BuildContext context) {
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
        SizedBox(
            height: 482.50,
            width: 225.00,
            child: Image.asset(
              widget.image,
              fit: BoxFit.fill,
            )),
        const SizedBox(
          height: 30,
        ),
        RegularGithubButton(link: widget.github)
      ],
    );
  }
}
