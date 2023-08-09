import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:my_flutter_portfolio/main_dashboards.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      AnimatedSplashScreen(
        backgroundColor: AppColors.backgroundColor,
        splash: 'lib/assets/images/dash.png',
        nextScreen: const MainDashBoard(),
        splashTransition: SplashTransition.sizeTransition,
        animationDuration: const Duration(milliseconds: 2000),
      ),
    ]);
  }
}
