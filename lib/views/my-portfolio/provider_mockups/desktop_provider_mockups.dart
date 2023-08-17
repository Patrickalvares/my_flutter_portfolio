import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components/regular_github_button.dart';
import 'package:my_flutter_portfolio/components/youtube_Frame.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:my_flutter_portfolio/constants/app_external_links.dart';
import 'package:my_flutter_portfolio/constants/app_text_style.dart';
import 'package:my_flutter_portfolio/constants/app_texts.dart';

class DesktopProviderMockups extends StatelessWidget {
  const DesktopProviderMockups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: size.width * 0.1),
      decoration: BoxDecoration(color: AppColors.backgroundColor),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SimpleHtmlYoutubeIframe(
              key: key,
              youtubeCode: 'Gl7aXzVsuvM',
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Exercicio: Provider para o Theme',
                    style: AppTextStyles.montseratStyle().copyWith(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: size.width * 0.10,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 20),
                      child: DesafioText(
                          fontTextSize: (size.width > 1210) ? 20 : 15)),
                  Center(
                      child: RegularGithubButton(
                          link: AppLinks.desafioProviderLink)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
