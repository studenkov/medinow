import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:medinow/l10n/app_localizations.dart';
import 'package:medinow/ui/organizer/widgets/organizer_app_bar.dart';
import 'package:medinow/ui/organizer/widgets/organizer_row_info.dart';

class OrganizerScreen extends StatelessWidget {
  const OrganizerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;

    final viewPadding = MediaQuery.paddingOf(context);

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: OrganizerAppBar(
        title: Text(
          l10n.organizer,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        onBack: () {},
        onMenuPressed: () {},
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: viewPadding.left + 24,
          right: viewPadding.right + 24,
          top: 24,
          bottom: viewPadding.bottom + 16,
        ),
        child: Column(
          spacing: 24,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              spacing: 24,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(120),
                  child: Image.asset(
                    'assets/images/avatar.webp',
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),

                Text(
                  l10n.albertFlores,
                  style: TextStyle(
                    color: colorScheme.onSurface,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),

            IntrinsicHeight(
              child: Row(
                spacing: 8,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: OrganizerRowInfo(
                      title: l10n.followersCount,
                      description: l10n.followers,
                    ),
                  ),

                  const VerticalDivider(
                    width: 36,
                    thickness: 1,
                    color: Color(0xFFEBEEF2),
                  ),

                  Expanded(
                    child: OrganizerRowInfo(
                      title: l10n.followingCount,
                      description: l10n.following,
                    ),
                  ),

                  const VerticalDivider(thickness: 1, color: Color(0xFFEBEEF2)),

                  Expanded(
                    child: OrganizerRowInfo(
                      title: l10n.eventsCount,
                      description: l10n.events,
                    ),
                  ),
                ],
              ),
            ),

            const Divider(thickness: 1, color: Color(0xFFEBEEF2)),

            Row(
              spacing: 16,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF5265FF), Color(0xFF7685FF)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 24,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 12,
                        children: [
                          const Icon(Icons.person_add),
                          Text(
                            l10n.follow,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFF5265FF),
                      side: const BorderSide(
                        color: Color(0xFF5265FF),
                        width: 2,
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 24,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 12,
                      children: [
                        const Icon(Icons.message),
                        Text(
                          l10n.messages,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const Divider(thickness: 1, color: Color(0xFFEBEEF2)),

            Row(
              spacing: 16,
              children: [
                Expanded(
                  child: FilledButton(
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                      backgroundColor: const Color(0xFF5265FF),
                      padding: const EdgeInsets.all(8),
                    ),
                    child: Text(
                      l10n.about,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFF5265FF),
                      side: const BorderSide(
                        color: Color(0xFF5265FF),
                        width: 2,
                      ),
                      padding: const EdgeInsets.all(8),
                    ),
                    child: Text(
                      l10n.events,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFF5265FF),
                      side: const BorderSide(
                        color: Color(0xFF5265FF),
                        width: 2,
                      ),
                      padding: const EdgeInsets.all(8),
                    ),
                    child: Text(
                      l10n.reviews,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                Text(
                  l10n.about,
                  style: const TextStyle(
                    color: Color(0xFF2C3A4B),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Text(
                  l10n.organizerBio,
                  style: const TextStyle(
                    color: Color(0xFF394452),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                Text(
                  l10n.readMore,
                  style: const TextStyle(
                    color: Color(0xFF5265FF),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

@Preview(name: 'Organizer Screen')
Widget organizerScreenPreview() => const MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: OrganizerScreen(),
    );
