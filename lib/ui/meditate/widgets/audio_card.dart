import 'package:flutter/material.dart';
import 'package:medinow/ui/icons/medinow_app_icons.dart';
import 'package:medinow/ui/theme/app_colors.dart';

class AudioCard extends StatelessWidget {
  const AudioCard({
    super.key,
    required this.title,
    required this.description,
    required this.buttonColor,
    required this.onCardPressed,
    required this.onMenuPressed,
  });

  final String title;
  final String description;
  final ButtonColor buttonColor;
  final VoidCallback onCardPressed;
  final VoidCallback onMenuPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      key: key,
      color: colorScheme.surface,
      elevation: 0,
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onCardPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  spacing: 16,
                  children: [
                    IconButton.filled(
                      onPressed: onCardPressed,
                      style: IconButton.styleFrom(
                        backgroundColor: buttonColor.resolve(context),
                        foregroundColor: colorScheme.onPrimary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      icon: const Icon(MedinowAppIcons.play),
                    ),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              color: colorScheme.onSurface,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),

                          Text(
                            description,
                            style: TextStyle(
                              color: colorScheme.onSurfaceVariant,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),

                    IconButton(
                      onPressed: onMenuPressed,
                      icon: const Icon(Icons.more_horiz),
                    ),
                  ],
                ),
              ),

              Divider(height: 1, thickness: 1, color: const Color(0xFFEBEBEB)),
            ],
          ),
        ),
      ),
    );
  }
}

enum ButtonColor {
  blue,
  green,
  orange;

  Color resolve(BuildContext context) {
    return switch (this) {
      ButtonColor.blue => AppColors.blue,
      ButtonColor.green => Theme.of(context).colorScheme.primary,
      ButtonColor.orange => AppColors.orange,
    };
  }
}
