import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components/regular_github_button.dart';
import 'package:my_flutter_portfolio/components/youtube_Frame.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:my_flutter_portfolio/constants/app_external_links.dart';
import 'package:my_flutter_portfolio/constants/app_text_style.dart';
import 'package:my_flutter_portfolio/constants/app_texts.dart';

class DesktopRemediando extends StatelessWidget {
  const DesktopRemediando({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.1),
      decoration: BoxDecoration(color: AppColors.backgroundColor2),
      child: Row(
        children: [
          SimpleHtmlYoutubeIframe(
            key: key,
            youtubeCode: 'Zznm4VTGW0Y',
          ),
          Expanded(
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                      text: 'Meus ',
                      style: AppTextStyles.headingStyles().copyWith(
                        fontSize: 30,
                      ),
                      children: [
                        TextSpan(
                          text: 'Projetos',
                          style: AppTextStyles.headingStyles().copyWith(
                            fontSize: 30,
                            color: AppColors.robinEdgeBlue,
                          ),
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, right: 8.0, left: 20.0, bottom: 30),
                  child: Text(
                    'Remediando: App de Gerenciar Remédios',
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
                              child: RemediandoText(
                                      fontTextSize:
                                          (size.width > 1210) ? 20 : 15)
                                  .remediandoInfo,
                            ),
                            RegularGithubButton(link: AppLinks.remediandoLink),
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
