import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:my_flutter_portfolio/views/first-view/desktop_first_view.dart';
import 'package:my_flutter_portfolio/views/first-view/mobile_first_view.dart';

class FirstView extends StatefulWidget {
  const FirstView({super.key});

  @override
  State<FirstView> createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 1920),
      child: Container(
        color: AppColors.backgroundColor,
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (size.width > 970) {
              return const DesktopFirstView();
            } else {
              return const TabletFirstView();
            }
          },
        ),
      ),
    );
  }
}
