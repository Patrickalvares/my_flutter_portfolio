import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components/regular_github_button.dart';
import 'package:my_flutter_portfolio/components/youtube_Frame.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:my_flutter_portfolio/constants/app_external_links.dart';
import 'package:my_flutter_portfolio/constants/app_text_style.dart';
import 'package:my_flutter_portfolio/constants/app_texts.dart';

class MobileSnake extends StatelessWidget {
  const MobileSnake({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      decoration: BoxDecoration(color: AppColors.backgroundColor),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, right: 8.0, left: 20.0, bottom: 30),
            child: Text(
              'Snake em Linguagem C',
              style: AppTextStyles.montseratStyle().copyWith(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: AppTexts.snakeText),
          RegularGithubButton(link: AppLinks.snakeLink),
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: Divider(
              color: Colors.grey,
              thickness: 1.0,
              height: 20.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30, top: 20),
            child: SnakeHtmlYoutubeIframe(
              key: key,
              youtubeCode: 'F-SNNm_e4RY',
            ),
          ),
        ],
      ),
    );
  }
}
