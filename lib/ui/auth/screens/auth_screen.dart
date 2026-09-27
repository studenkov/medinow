import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medinow/l10n/app_localizations.dart';
import 'package:medinow/ui/widgets/progressive_fade.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final viewPadding = MediaQuery.paddingOf(context);

    final isLandscape =
        MediaQuery.orientationOf(context) == Orientation.landscape;

    final formContent = Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/icons/medinow.svg', height: 32),

          Container(
            height: 42,
            alignment: Alignment.center,
            child: Text(
              l10n.meditateWithUs,
              style: TextStyle(
                color: colorScheme.onPrimary,
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          SizedBox(height: isLandscape ? 24 : 45),

          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 12,
            children: [
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  backgroundColor: colorScheme.surface,
                  foregroundColor: colorScheme.onSurface,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: Text(
                  l10n.signInWithApple,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  backgroundColor: colorScheme.primaryContainer,
                  foregroundColor: colorScheme.onPrimaryContainer,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: Text(
                  l10n.continueWithEmailOrPhone,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              TextButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  foregroundColor: colorScheme.onPrimary,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                ),
                child: Text(
                  l10n.continueWithGoogle,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

    final illustration = SvgPicture.asset(
      'assets/images/auth.svg',
      fit: BoxFit.contain,
    );

    return Scaffold(
      backgroundColor: colorScheme.primary,
      body: ProgressiveFade(
        color: colorScheme.primary,
        child: isLandscape
            ? Row(
                children: [
                  Expanded(
                    child: Center(
                      child: SingleChildScrollView(
                        padding: EdgeInsets.only(
                          top: viewPadding.top + 16,
                          bottom: viewPadding.bottom + 16,
                          left: viewPadding.left + 24,
                          right: 16,
                        ),
                        child: formContent,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: viewPadding.top + 16,
                          bottom: viewPadding.bottom + 16,
                          left: 16,
                          right: viewPadding.right + 24,
                        ),
                        child: illustration,
                      ),
                    ),
                  ),
                ],
              )
            : Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.only(
                        top: viewPadding.top + 128,
                        left: viewPadding.left + 24,
                        right: viewPadding.right + 24,
                      ),
                      child: formContent,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: viewPadding.left + 24,
                      right: viewPadding.right + 24,
                      bottom: viewPadding.bottom + 16,
                    ),
                    child: AspectRatio(
                      aspectRatio: 378 / 285,
                      child: illustration,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

@Preview(name: 'Auth Screen')
Widget authScreenPreview() => const MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: AuthScreen(),
    );
