import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF284b63),
      onPrimary: Color(0xFFFEFEFE),
      secondary: Color(0xFF284b63),
      onSecondary: Color(0xFFFEFEFE),
      surface: Color(0xFFd9d9d9),
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w600),
      titleMedium: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w600),
      titleSmall: GoogleFonts.roboto(fontSize: 13, fontWeight: FontWeight.w600),
      labelLarge: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w500),
      labelMedium: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500),
      labelSmall: GoogleFonts.roboto(fontSize: 13, fontWeight: FontWeight.w500),
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      titleTextStyle: GoogleFonts.bebasNeue(fontSize: 16, fontWeight: FontWeight.w500),
      centerTitle: true,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        textStyle: GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w400),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 4),
      ),
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
        side: BorderSide.none,
      ),
      elevation: 10,
      color: Colors.white,
      shadowColor: Colors.black38,
      margin: EdgeInsets.zero,
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
      },
    ),
  );
}
