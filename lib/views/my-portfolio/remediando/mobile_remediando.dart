import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components/regular_github_button.dart';
import 'package:my_flutter_portfolio/components/youtube_Frame.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:my_flutter_portfolio/constants/app_external_links.dart';
import 'package:my_flutter_portfolio/constants/app_text_style.dart';
import 'package:my_flutter_portfolio/constants/app_texts.dart';

class MobileRemediando extends StatelessWidget {
  const MobileRemediando({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      padding:
          EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.03),
      decoration: BoxDecoration(
        color: AppColors.backgroundColor2,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          children: [
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
                  Text(
                    'Remediando: App de Gerenciar Remédios',
                    style: AppTextStyles.montseratStyle().copyWith(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: SimpleHtmlYoutubeIframe(
                      key: key,
                      youtubeCode: 'Zznm4VTGW0Y',
                    ),
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 10, right: 5, bottom: 5),
                          child:
                              RemediandoText(fontTextSize: 18).remediandoInfo,
                        ),
                        RegularGithubButton(link: AppLinks.remediandoLink),
                      ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
