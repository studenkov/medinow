import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:medinow/l10n/app_localizations.dart';
import 'package:medinow/ui/course/widgets/course_app_bar.dart';
import 'package:medinow/ui/course/widgets/course_card.dart';
import 'package:medinow/ui/course/widgets/course_chip.dart';
import 'package:medinow/ui/course/widgets/course_chip_round.dart';
import 'package:medinow/ui/icons/medinow_app_icons.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;

    final viewPadding = MediaQuery.paddingOf(context);

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: CourseAppBar(
        onBack: () {},
        title: Text(
          l10n.courseTitle,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: viewPadding.left + 24,
          right: viewPadding.right + 24,
          top: 24,
          bottom: viewPadding.bottom + 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 24,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/3d_design_basic.webp',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 12,
              children: [
                CourseChip(label: l10n.courseStudentsCount, icon: MedinowAppIcons.people),
                CourseChip(label: l10n.courseRating, icon: Icons.star_half),
                CourseChipRound(label: l10n.bestSeller),
              ],
            ),

            Text(
              l10n.courseTitle,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),

            Text(
              l10n.courseDescription,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),

            Row(
              children: [
                Expanded(
                  child: Text(
                    l10n.courseLessons,
                    style: const TextStyle(
                      color: Color(0xFF2C3A4B),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: const Color(0xFF304FFE),
                  ),
                  child: Text(
                    l10n.seeAll,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),

            CourseCard(
              title: l10n.introTo3D,
              description: l10n.introDuration,
              imagePath: 'assets/images/introduction_to_3d.webp',
              onCardPressed: () {},
            ),

            Container(
              margin: const EdgeInsets.only(top: 24),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF304FFE), Color(0xFF6D5FFD)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              child: FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                child: Text(
                  l10n.enrollPrice,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

@Preview(name: 'Course Screen')
Widget courseScreenPreview() => const MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: CourseScreen(),
    );
