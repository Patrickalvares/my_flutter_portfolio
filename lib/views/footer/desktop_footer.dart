import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_flutter_portfolio/components/animated_button.dart';
import 'package:my_flutter_portfolio/components/large_social_button.dart';
import 'package:my_flutter_portfolio/components/regular_github_button.dart';
import 'package:my_flutter_portfolio/constants/app_assets.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:my_flutter_portfolio/constants/app_external_links.dart';
import 'package:my_flutter_portfolio/constants/app_text_style.dart';

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: size.width * 0.1),
      decoration: BoxDecoration(color: AppColors.backgroundColor),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Este Site:',
                      style: AppTextStyles.montseratStyle().copyWith(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 500),
                        child: Text(
                          'Desenvolvi este site com Flutter e você pode encontrar o repositório dele abaixo: ',
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.mukta(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child:
                          RegularGithubButton(link: AppLinks.portfolioRepoLink),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 300,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 1.0,
                  width: 20.0,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Me encontre:',
                      style: AppTextStyles.montseratStyle().copyWith(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: LargeSocialButton(
                        color: Colors.white,
                        externalLink: AppLinks.linkedin,
                        imageAsset: AppAssets.linkedin,
                        socialName: 'Linkedin',
                        imageWidth: 26,
                        imageHeight: 26,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: LargeSocialButton(
                        color: Colors.white,
                        externalLink: AppLinks.github,
                        imageAsset: AppAssets.github,
                        socialName: 'Github',
                        imageWidth: 26,
                        imageHeight: 26,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: LargeSocialButton(
                        color: Colors.white,
                        externalLink: AppLinks.whatsapp,
                        imageAsset: AppAssets.whatsapp,
                        socialName: 'WhatsApp',
                        imageWidth: 24,
                        imageHeight: 24,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: AnimatedButton(
              buttonName: 'Download do Currículo',
            ),
          ),
        ],
      ),
    );
  }
}
