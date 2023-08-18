import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components/regular_github_button.dart';
import 'package:my_flutter_portfolio/components/youtube_Frame.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:my_flutter_portfolio/constants/app_external_links.dart';
import 'package:my_flutter_portfolio/constants/app_text_style.dart';
import 'package:my_flutter_portfolio/constants/app_texts.dart';

class DesktopSnake extends StatelessWidget {
  const DesktopSnake({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: (size.width > 1314) ? size.width * 0.1 : 20),
      decoration: BoxDecoration(color: AppColors.backgroundColor),
      child: Row(
        children: [
          SnakeHtmlYoutubeIframe(
            key: key,
            youtubeCode: 'F-SNNm_e4RY',
          ),
          Expanded(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, bottom: 20),
                                child: AppTexts.snakeText),
                            RegularGithubButton(link: AppLinks.snakeLink),
                          ]),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
