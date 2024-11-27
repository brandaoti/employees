import 'package:flutter/material.dart';

abstract interface class SplashController {
  AnimationController get animationController;
  Animation<double> get scaleAnimation;

  void init({
    required Duration duration,
    required TickerProvider vsync,
  });

  void startAnimation();

  void dispose();
}

class SplashControllerImpl implements SplashController {
  SplashControllerImpl();

  late final Animation<double> _scaleAnimation;
  late final AnimationController _animationController;

  @override
  Animation<double> get scaleAnimation => _scaleAnimation;

  @override
  AnimationController get animationController => _animationController;

  @override
  void init({
    required Duration duration,
    required TickerProvider vsync,
  }) {
    _animationController = AnimationController(
      vsync: vsync,
      duration: duration,
    );

    _scaleAnimation = CurvedAnimation(
      curve: Curves.easeInOut,
      parent: _animationController,
    );
  }

  @override
  void startAnimation() {
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
  }
}
