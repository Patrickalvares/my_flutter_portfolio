import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/components/app_bar.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'views/about-me/about_me.dart';
import 'views/first-view/first_view.dart';
import 'views/my-portfolio/my_portfolio.dart';
import 'views/my-services/my_services.dart';

class MainDashBoard extends StatefulWidget {
  const MainDashBoard({super.key});

  @override
  State<MainDashBoard> createState() => _MainDashBoardState();
}

class _MainDashBoardState extends State<MainDashBoard> {
  final AutoScrollController _controller = AutoScrollController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    bool printDrawer = false;

    PreferredSizeWidget appBar;

    if (size.width > 1170) {
      appBar = DesktopAppBar(
          controller: _controller,
          onItemTap: (index) => scrollToSection(_controller, index));
      printDrawer = false;
    } else {
      appBar = const NonDesktopAppBar();
      printDrawer = true;
    }
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: appBar,
      drawer: printDrawer
          ? CustomDrawer(
              controller: _controller,
              onItemTap: (index) => scrollToSection(_controller, index),
            )
          : null,
      body: ScrollbarTheme(
        data: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all(AppColors.hoverColor),
          trackColor: MaterialStateProperty.all(AppColors.themeColor),
        ),
        child: Scrollbar(
          controller: _controller,
          trackVisibility: true,
          thumbVisibility: true,
          child: SingleChildScrollView(
            controller: _controller,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoScrollTag(
                    index: 1,
                    key: const ValueKey(1),
                    controller: _controller,
                    child: const FirstView()),
                AutoScrollTag(
                    index: 2,
                    key: const ValueKey(2),
                    controller: _controller,
                    child: const AboutMe()),
                AutoScrollTag(
                    index: 3,
                    key: const ValueKey(3),
                    controller: _controller,
                    child: const MyServices()),
                AutoScrollTag(
                    index: 4,
                    key: const ValueKey(4),
                    controller: _controller,
                    child: const MyPortfolio()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void scrollToSection(AutoScrollController controller, int index) async {
    if (index == 0 && controller.hasClients) {
      await controller.animateTo(1.0,
          duration: const Duration(milliseconds: 1), curve: Curves.easeInOut);
    }
    await controller.scrollToIndex(index,
        preferPosition: AutoScrollPosition.begin);
    controller.highlight(index);
  }
}
