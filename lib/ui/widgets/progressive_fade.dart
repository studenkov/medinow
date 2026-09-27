import 'package:flutter/material.dart';

class ProgressiveFade extends StatelessWidget {
  final Widget child;
  final double height;
  final Color color;

  const ProgressiveFade({
    super.key,
    required this.child,
    this.height = 16,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.paddingOf(context).top;
    final double totalFadeHeight = statusBarHeight + height;
    final double screenHeight = MediaQuery.sizeOf(context).height;
    final double end = screenHeight > 0
        ? (totalFadeHeight / screenHeight).clamp(0.0, 1.0)
        : 0.0;

    return ShaderMask(
      blendMode: BlendMode.dstIn,
      shaderCallback: (bounds) => LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [color.withValues(alpha: 0), color],
        stops: [0.0, end],
      ).createShader(bounds),
      child: child,
    );
  }
}
