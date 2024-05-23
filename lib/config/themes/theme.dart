import 'package:flutter/material.dart';
import 'package:sign_and_share_mobile/config/themes/app_pallete.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final lightThemeMode = ThemeData.light().copyWith(
    colorScheme: ColorScheme.fromSeed(seedColor: AppPalette.primary),
    scaffoldBackgroundColor: AppPalette.background,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: GoogleFonts.poppinsTextTheme(),
  );
}
