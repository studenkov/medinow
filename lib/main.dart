import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medinow/l10n/app_localizations.dart';
// ignore: unused_import
import 'package:medinow/ui/auth/screens/auth_screen.dart';
// ignore: unused_import
import 'package:medinow/ui/course/screens/course_screen.dart';
// ignore: unused_import
import 'package:medinow/ui/meditate/screens/meditate_screen.dart';
import 'package:medinow/ui/organizer/screens/organizer_screen.dart';
import 'package:medinow/ui/theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  runApp(const MedinowApp());
}

class MedinowApp extends StatelessWidget {
  const MedinowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: AppTheme.lightTheme,
      home: const CourseScreen(),
    );
  }
}
