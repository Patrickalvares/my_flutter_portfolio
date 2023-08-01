import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/globals/app_colors.dart';
import 'package:my_flutter_portfolio/globals/app_text_style.dart';

class AnimatedButton extends StatefulWidget {
  const AnimatedButton({super.key});

  @override
  AnimatedButtonState createState() => AnimatedButtonState();
}

class AnimatedButtonState extends State<AnimatedButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        duration: const Duration(milliseconds: 400), vsync: this)
      ..repeat(reverse: true);
    _animation = Tween<double>(begin: -0.02, end: 0.02).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.rotate(
          angle: _animation.value,
          child: MaterialButton(
            onPressed: () {},
            color: AppColors.themeColor,
            hoverColor: AppColors.hoverColor,
            elevation: 12,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            height: 55,
            minWidth: 120,
            child: Text(
              'Download do Currículo',
              style: AppTextStyles.headerTextStyle(),
            ),
          ),
        );
      },
    );
  }
}
