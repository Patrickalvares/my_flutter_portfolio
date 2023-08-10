import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components/regular_github_button.dart';
import 'package:my_flutter_portfolio/components/youtubeFrame.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:my_flutter_portfolio/constants/app_external_links.dart';
import 'package:my_flutter_portfolio/constants/app_text_style.dart';
import 'package:my_flutter_portfolio/constants/app_texts.dart';

class MobileProviderMockups extends StatelessWidget {
  const MobileProviderMockups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        width: size.width,
        height: 1050,
        alignment: Alignment.center,
        padding:
            EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.03),
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'leituras de mockups',
                    style: AppTextStyles.headingStyles().copyWith(
                      fontSize: 30,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Exercicio App com uso de Provider para o Theme',
                  style: AppTextStyles.montseratStyle().copyWith(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 30,
                ),
                SimpleHtmlYoutubeIframe(
                  key: key,
                  youtubeCode: 'Gl7aXzVsuvM',
                ),
                Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 10, right: 10, bottom: 10),
                          child: DesafioText(fontTextSize: 15),
                        ),
                        RegularGithubButton(link: AppLinks.desafioProviderLink),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
