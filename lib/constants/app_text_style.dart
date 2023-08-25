import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle headerTextStyle() {
    return GoogleFonts.mukta(
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
  }

  static TextStyle montseratStyle({Color color = Colors.white}) {
    return GoogleFonts.montserrat(
      color: color,
      fontWeight: FontWeight.w800,
      fontSize: 24,
    );
  }

  static TextStyle headingStyles() {
    return GoogleFonts.rubikMonoOne(
      fontSize: 36,
      letterSpacing: 2,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }

  static TextStyle normalStyle() {
    return GoogleFonts.mukta(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: Colors.white,
        letterSpacing: 1.5);
  }
}
