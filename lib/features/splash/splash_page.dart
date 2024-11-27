import 'package:flutter/material.dart';

import '../../core/values/values.dart';
import '../home/home_page.dart';
import 'widgets/widgets.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

const _duration = Duration(seconds: 5);
const _transitionDuration = Duration(milliseconds: 800);

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late Animation<double> _scaleAnimation;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: _duration,
    )..addListener(_startListener);

    _scaleAnimation = CurvedAnimation(
      curve: Curves.easeInOut,
      parent: _animationController,
    );

    _animationController.forward();
  }

  void _startListener() async {
    if (_animationController.isCompleted) {
      await Future.delayed(_transitionDuration);

      if (!mounted) return;

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: AnimatedBuilder(
        animation: _animationController,
        builder: (_, __) {
          return SplashWidget(
            opacity: _scaleAnimation,
            width: _animationController.value * 198,
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
