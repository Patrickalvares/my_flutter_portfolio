import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/globals/app_colors.dart';
import 'package:my_flutter_portfolio/globals/app_text_style.dart';
import 'package:my_flutter_portfolio/globals/constants.dart';
import 'package:my_flutter_portfolio/views/about_me.dart';
import 'package:my_flutter_portfolio/views/first_view.dart';
import 'package:my_flutter_portfolio/views/my_portfolio.dart';
import 'package:my_flutter_portfolio/views/my_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        toolbarHeight: 90,
        titleSpacing: 100,
        elevation: 2,
        bottomOpacity: 23,
        title: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 60,
          ),
          child: Row(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Meu Portfólio',
                  style: AppTextStyles.headerTextStyle()
                      .copyWith(fontWeight: FontWeight.normal, fontSize: 30),
                ),
                const Text(
                  'Desenvolvido por mim com Flutter Web',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )
              ],
            ),
            const Spacer(),
            const SizedBox(
              width: 40,
            ),
            Text('início', style: AppTextStyles.headerTextStyle()),
            const SizedBox(
              width: 40,
            ),
            Text('Sobre Mim', style: AppTextStyles.headerTextStyle()),
            const SizedBox(
              width: 40,
            ),
            Text('Serviços', style: AppTextStyles.headerTextStyle()),
            const SizedBox(
              width: 40,
            ),
            Text('Portfólio', style: AppTextStyles.headerTextStyle()),
            const SizedBox(
              width: 40,
            ),
            Text('Contacte-me', style: AppTextStyles.headerTextStyle()),
            const SizedBox(
              width: 40,
            ),
          ]),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
            top: size.height * 0.2,
            left: size.height * 0.0,
            right: size.height * 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FirstView(),
            Constants.sizedBox(height: 220),
            const AboutMe(),
            const MyServices(),
            const MyPortfolio(),
          ],
        ),
      ),
    );
  }
}
