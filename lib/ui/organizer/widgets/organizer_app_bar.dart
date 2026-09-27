import 'package:flutter/material.dart';
import 'package:medinow/ui/theme/app_colors.dart';

class OrganizerAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OrganizerAppBar({
    super.key,
    this.title,
    this.onBack,
    this.onMenuPressed,
  });

  final Widget? title;
  final VoidCallback? onBack;
  final VoidCallback? onMenuPressed;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBar(
      backgroundColor: theme.colorScheme.surface,
      surfaceTintColor: Colors.transparent,
      scrolledUnderElevation: 4,
      shadowColor: Colors.black.withValues(alpha: 0.2),
      automaticallyImplyLeading: false,
      titleSpacing: 8,
      leading: Padding(
        padding: const EdgeInsetsDirectional.only(start: 16),
        child: Center(
          child: IconButton(
            onPressed: onBack,
            icon: const Icon(
              Icons.arrow_back_rounded,
              size: 24,
              color: AppColors.purple,
            ),
          ),
        ),
      ),
      title: title,
      actions: [
        Padding(
          padding: const EdgeInsetsDirectional.only(end: 24),
          child: Center(
            child: SizedBox.square(
              dimension: 44,
              child: IconButton(
                onPressed: onMenuPressed,
                padding: EdgeInsets.zero,
                style: IconButton.styleFrom(
                  backgroundColor: AppColors.purpleContainer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                icon: const Icon(
                  Icons.more_vert,
                  size: 24,
                  color: AppColors.purple,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
