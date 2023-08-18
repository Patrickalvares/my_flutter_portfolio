import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/views/my-portfolio/misc_mockups/desktop_misc_mockups.dart';
import 'package:my_flutter_portfolio/views/my-portfolio/misc_mockups/mobile_misc_mockups.dart';
import 'package:my_flutter_portfolio/views/my-portfolio/misc_mockups/tablet_misc_mockups.dart';
import 'package:my_flutter_portfolio/views/my-portfolio/provider_mockups/desktop_provider_mockups.dart';
import 'package:my_flutter_portfolio/views/my-portfolio/provider_mockups/mobile_provider_mockups.dart';
import 'package:my_flutter_portfolio/views/my-portfolio/remediando/desktop_remediando.dart';
import 'package:my_flutter_portfolio/views/my-portfolio/snake/desktop_snake.dart';
import 'package:my_flutter_portfolio/views/my-portfolio/snake/mobile_snake.dart';
import 'remediando/mobile_remediando.dart';

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({super.key});

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 1920),
      child: Column(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              if (size.width > 840) {
                return const DesktopRemediando();
              } else {
                return const MobileRemediando();
              }
            },
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              if (size.width > 810) {
                return const DesktopProviderMockups();
              } else {
                return const MobileProviderMockups();
              }
            },
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              if (size.width > 1450) {
                return const DesktopMiscMockups();
              } else if (size.width < 1450 && size.width > 725) {
                return const TabletMiscMockups();
              } else {
                return const MobileMiscMockups();
              }
            },
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              if (size.width > 950) {
                return const DesktopSnake();
              } else {
                return const MobileSnake();
              }
            },
          ),
        ],
      ),
    );
  }
}
