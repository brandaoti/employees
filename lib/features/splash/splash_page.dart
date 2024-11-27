import 'package:flutter/material.dart';

import '../../core/values/values.dart';
import '../home/home_page.dart';
import 'splash_controller.dart';
import 'widgets/widgets.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

const _duration = Duration(seconds: 5);
const _transitionDuration = Duration(milliseconds: 800);

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late SplashController _controller;

  @override
  void initState() {
    super.initState();

    _controller = SplashControllerImpl()
      ..init(duration: _duration, vsync: this)
      ..startAnimation();

    _checkAnimation();
  }

  void _checkAnimation() {
    final animation = _controller.animationController;

    animation.addListener(() async {
      if (animation.isCompleted) {
        await Future.delayed(_transitionDuration);

        _navigateToHome();
      }
    });
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        transitionDuration: _transitionDuration,
        pageBuilder: (_, __, ___) => const HomePage(),
        transitionsBuilder: (_, animation, __, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: AnimatedBuilder(
        animation: _controller.animationController,
        builder: (_, __) {
          return SplashWidget(
            opacity: _controller.scaleAnimation,
            width: _controller.animationController.value * 198,
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
