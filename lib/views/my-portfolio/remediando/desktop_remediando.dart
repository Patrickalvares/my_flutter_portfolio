import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components/regular_github_button.dart';
import 'package:my_flutter_portfolio/components/youtubeFrame.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:my_flutter_portfolio/constants/app_external_links.dart';
import 'package:my_flutter_portfolio/constants/app_text_style.dart';
import 'package:my_flutter_portfolio/constants/app_texts.dart';

class DesktopRemediando extends StatelessWidget {
  const DesktopRemediando({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        width: size.width,
        height: (size.width > 1400) ? 700 : 800,
        alignment: Alignment.center,
        padding:
            EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.1),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0XFF004953),
            Color.fromARGB(255, 1, 67, 76),
            Color(0xff003153),
          ],
        )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SizedBox(
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
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SimpleHtmlYoutubeIframe(
                      key: key,
                      youtubeCode: 'Zznm4VTGW0Y',
                    ),
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
        ),
      ),
    );
  }
}
