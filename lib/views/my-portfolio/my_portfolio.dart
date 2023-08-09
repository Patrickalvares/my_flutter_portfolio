import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/constants/app_assets.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:my_flutter_portfolio/constants/app_text_style.dart';

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({super.key});

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  final onHoverEffect = Matrix4.identity()..scale(1.0);

  List<String> images = [
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
  ];

  var hoveredIndex;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.backgroundColor2,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.1),
      child: Column(
        children: [
          FadeInRight(
            duration: const Duration(milliseconds: 1500),
            delay: const Duration(milliseconds: 1700),
            child: RichText(
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
          ),
          const SizedBox(height: 40),
          GridView.builder(
            itemCount: images.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 280,
              mainAxisSpacing: 24,
              crossAxisSpacing: 24,
            ),
            itemBuilder: (context, index) {
              var image = images[index];
              return FadeInUpBig(
                duration: const Duration(milliseconds: 1600),
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    if (value) {
                      setState(() {
                        if (value) {
                          hoveredIndex = index;
                        }
                      });
                    } else {
                      hoveredIndex = null;
                    }
                  },
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage(image),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Visibility(
                        visible: index == hoveredIndex,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          transform:
                              index == hoveredIndex ? onHoverEffect : null,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                Colors.greenAccent.withOpacity(0.3),
                                Colors.greenAccent.withOpacity(0.4),
                                Colors.greenAccent.withOpacity(0.5),
                                Colors.greenAccent.withOpacity(0.6),
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Desenvolvimento de aplicativos',
                                style: AppTextStyles.montseratStyle(
                                        color: Colors.black87)
                                    .copyWith(fontSize: 20),
                              ),
                              const SizedBox(height: 15),
                              Text(
                                'ouiashdoashdaoisdjhasdhcjna jha jao haoiushsdoih aoasij aoihdjaoidyhiouweha ',
                                style: AppTextStyles.normalStyle()
                                    .copyWith(fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 30),
                              CircleAvatar(
                                maxRadius: 25,
                                backgroundColor: Colors.white,
                                child: Image.asset(
                                  AppAssets.share,
                                  width: 25,
                                  height: 25,
                                  fit: BoxFit.fill,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
