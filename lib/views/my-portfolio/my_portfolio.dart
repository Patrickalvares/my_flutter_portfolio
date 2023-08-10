import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/views/my-portfolio/provider_mockups/desktop_provider_mockups.dart';
import 'package:my_flutter_portfolio/views/my-portfolio/provider_mockups/mobile_provider_mockups.dart';
import 'package:my_flutter_portfolio/views/my-portfolio/remediando/desktop_remediando.dart';
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

    return Column(
      children: [
        LayoutBuilder(
          builder: (context, constraints) {
            if (size.width > 810) {
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
      ],
    );
  }
}
