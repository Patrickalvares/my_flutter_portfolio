import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components/regular_github_button.dart';
import 'package:my_flutter_portfolio/components/youtube_Frame.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:my_flutter_portfolio/constants/app_external_links.dart';
import 'package:my_flutter_portfolio/constants/app_text_style.dart';
import 'package:my_flutter_portfolio/constants/app_texts.dart';

class MobileIotCar extends StatelessWidget {
  const MobileIotCar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      padding:
          EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.03),
      decoration: BoxDecoration(color: AppColors.backgroundColor2),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Em desenvolvimento: Carrinho controlado via Cloud',
                    style: AppTextStyles.montseratStyle().copyWith(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CarIotHtmlYoutubeIframe(
                    key: key,
                    youtubeCode: 'IPDkd636BcE',
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1.0,
                      height: 20.0,
                    ),
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                            bottom: 15,
                          ),
                          child: AppTexts.iotCarText,
                        ),
                        RegularGithubButton(link: AppLinks.iotCarLink),
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
