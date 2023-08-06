import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/globals/app_assets.dart';

class ProfileAnimation extends StatefulWidget {
  final Size size;
  const ProfileAnimation({super.key, required this.size});

  @override
  State<ProfileAnimation> createState() => _ProfileAnimationState();
}

class _ProfileAnimationState extends State<ProfileAnimation>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..repeat(reverse: true);

    _animation =
        Tween(begin: const Offset(0, -0.05), end: const Offset(0, 0.05))
            .animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      delay: const Duration(milliseconds: 3000),
      child: SlideTransition(
        position: _animation,
        child: Image.asset(
          AppAssets.myPhoto,
          width: (widget.size.width > 500) ? 450 : 380,
        ),
      ),
    );
  }
}
