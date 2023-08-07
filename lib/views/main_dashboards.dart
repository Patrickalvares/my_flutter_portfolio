import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components/app_bar.dart';
import 'package:my_flutter_portfolio/globals/app_colors.dart';
import '../globals/constants.dart';
import 'about-me/about_me.dart';
import 'first-view/first_view.dart';
import 'my_portfolio.dart';
import 'my-services/my_services.dart';

class MainDashBoard extends StatefulWidget {
  const MainDashBoard({super.key});

  @override
  State<MainDashBoard> createState() => _MainDashBoardState();
}

class _MainDashBoardState extends State<MainDashBoard> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    bool printDrawer = false;

    PreferredSizeWidget appBar;

    if (size.width > 1170) {
      appBar = const DesktopAppBar();
      printDrawer = false;
    } else {
      appBar = const NonDesktopAppBar();
      printDrawer = true;
    }
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: appBar,
      drawer: printDrawer ? const CustomDrawer() : null,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
            top: (size.width > 970) ? size.height * 0.2 : size.height * 0.01,
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
