import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract final class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF039EA2),
        primary: const Color(0xFF039EA2),
        onPrimary: Colors.white,
        primaryContainer: const Color(0xFFCDFDFE),
        onPrimaryContainer: Colors.black,
        surface: Colors.white,
        onSurface: Colors.black,
        onSurfaceVariant: const Color(0xFF808080),
      ),
      textTheme: GoogleFonts.plusJakartaSansTextTheme(),
    );
  }
}
