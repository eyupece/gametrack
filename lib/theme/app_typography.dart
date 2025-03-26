import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  // Text Styles
  static TextStyle get h1 => GoogleFonts.poppins(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.5,
      );

  static TextStyle get h2 => GoogleFonts.poppins(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.25,
      );

  static TextStyle get h3 => GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.25,
      );

  static TextStyle get h4 => GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.25,
      );

  static TextStyle get h5 => GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.25,
      );

  static TextStyle get h6 => GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.25,
      );

  static TextStyle get body1 => GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        letterSpacing: 0.15,
      );

  static TextStyle get body2 => GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        letterSpacing: 0.15,
      );

  static TextStyle get subtitle1 => GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      );

  static TextStyle get subtitle2 => GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      );

  static TextStyle get button => GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
      );

  static TextStyle get caption => GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        letterSpacing: 0.4,
      );

  static TextStyle get overline => GoogleFonts.poppins(
        fontSize: 10,
        fontWeight: FontWeight.normal,
        letterSpacing: 1.5,
      );
}
