import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medinow/l10n/app_localizations.dart';
import 'package:medinow/ui/icons/medinow_app_icons.dart';
import 'package:medinow/ui/meditate/widgets/audio_card.dart';
import 'package:medinow/ui/widgets/progressive_fade.dart';

class MeditateScreen extends StatelessWidget {
  const MeditateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;

    final viewPadding = MediaQuery.paddingOf(context);

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: ProgressiveFade(
        color: colorScheme.primary,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            left: viewPadding.left + 24,
            right: viewPadding.right + 24,
            top: viewPadding.top + 16,
            bottom: viewPadding.bottom + 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SvgPicture.asset(
                'assets/images/mind_deep_relax.svg',
                fit: BoxFit.fitWidth,
              ),

              const SizedBox(height: 14),

              Text(
                l10n.peterMach,
                style: TextStyle(
                  color: colorScheme.onSurfaceVariant,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),

              Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    l10n.mindDeepRelax,
                    style: TextStyle(
                      color: colorScheme.onSurface,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  Text(
                    l10n.meditateDescription,
                    style: const TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: FilledButton.icon(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      icon: const Icon(MedinowAppIcons.play, size: 24),
                      label: Text(
                        l10n.playNextSession,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),

                  Column(
                    children: [
                      AudioCard(
                        title: l10n.sweetMemories,
                        description: l10n.december29PreLaunch,
                        buttonColor: ButtonColor.blue,
                        onCardPressed: () {},
                        onMenuPressed: () {},
                      ),

                      AudioCard(
                        title: l10n.aDayDream,
                        description: l10n.december29PreLaunch,
                        buttonColor: ButtonColor.green,
                        onCardPressed: () {},
                        onMenuPressed: () {},
                      ),

                      AudioCard(
                        title: l10n.aDayDream,
                        description: l10n.december29PreLaunch,
                        buttonColor: ButtonColor.orange,
                        onCardPressed: () {},
                        onMenuPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

@Preview(name: 'Meditate Screen')
Widget meditateScreenPreview() => const MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: MeditateScreen(),
    );
