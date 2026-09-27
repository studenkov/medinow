import 'package:flutter/material.dart';
import 'package:medinow/ui/theme/app_colors.dart';

class CourseChip extends StatelessWidget {
  const CourseChip({super.key, required this.label, this.icon});

  final String label;
  final IconData? icon;

  static const _gradient = LinearGradient(
    begin: AlignmentDirectional.topStart,
    end: AlignmentDirectional.bottomEnd,
    colors: [Color(0xFF304FFE), Color(0xFF6D5FFD)],
  );

  @override
  Widget build(BuildContext context) {
    final textDirection = Directionality.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.purpleContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (icon != null) ...[
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) =>
                  _gradient.createShader(bounds, textDirection: textDirection),
              child: Icon(icon, size: 18, color: Colors.white),
            ),
            const SizedBox(width: 6),
          ],
          ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (Rect bounds) =>
                _gradient.createShader(bounds, textDirection: textDirection),
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
