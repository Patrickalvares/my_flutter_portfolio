import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components/regular_github_button.dart';
import 'package:my_flutter_portfolio/components/youtube_Frame.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:my_flutter_portfolio/constants/app_external_links.dart';
import 'package:my_flutter_portfolio/constants/app_text_style.dart';
import 'package:my_flutter_portfolio/constants/app_texts.dart';

class DesktopIotCar extends StatelessWidget {
  const DesktopIotCar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: size.width * 0.1),
      decoration: BoxDecoration(color: AppColors.backgroundColor2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CarIotHtmlYoutubeIframe(
            key: key,
            youtubeCode: 'IPDkd636BcE',
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40),
            child: SizedBox(
              height: 490,
              child: VerticalDivider(
                color: Colors.grey,
                thickness: 1.0,
                width: 20.0,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, bottom: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: AppTexts.iotCarText,
                  ),
                  Center(child: RegularGithubButton(link: AppLinks.iotCarLink)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
