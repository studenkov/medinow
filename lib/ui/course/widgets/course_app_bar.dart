import 'package:flutter/material.dart';
import 'package:medinow/ui/theme/app_colors.dart';

class CourseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CourseAppBar({super.key, this.title, this.onBack});

  final Widget? title;
  final VoidCallback? onBack;

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
      centerTitle: false,
      leadingWidth: 60,
      titleSpacing: 20,
      leading: Padding(
        padding: const EdgeInsetsDirectional.only(start: 24),
        child: Center(
          child: SizedBox.square(
            dimension: 36,
            child: IconButton(
              onPressed: onBack ?? () => Navigator.maybePop(context),
              padding: EdgeInsets.zero,
              style: IconButton.styleFrom(
                backgroundColor: AppColors.purpleContainer,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                minimumSize: const Size.square(36),
                fixedSize: const Size.square(36),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 20,
                color: AppColors.purple,
              ),
            ),
          ),
        ),
      ),
      title: title,
    );
  }
}
