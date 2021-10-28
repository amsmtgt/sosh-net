import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: avoid_classes_with_only_static_members
class FlutterFlowTheme {
  static const Color primaryColor = Color(0xFF2431E4);
  static const Color secondaryColor = Color(0xFF844DFF);
  static const Color tertiaryColor = Color(0xFFFFFFFF);

  static const Color shadow = Color(0xFF1A134D);
  static const Color blue1 = Color(0xFF666FEC);
  static const Color violet1 = Color(0xFFA982FF);
  static const Color violet2 = Color(0xFFCEB8FF);
  static const Color white2 = Color(0xFFE9EAFC);
  static const Color backgroundcolor1 = Color(0xFF080618);
  static const Color backgroundcolor2 = Color(0xFF110D30);

  String primaryFontFamily = 'Poppins';
  String secondaryFontFamily = 'Roboto';
  static TextStyle get title1 => GoogleFonts.getFont(
        'Nunito',
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 48,
      );
  static TextStyle get title2 => GoogleFonts.getFont(
        'Nunito',
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 39,
      );
  static TextStyle get title3 => GoogleFonts.getFont(
        'Nunito',
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 31,
      );
  static TextStyle get subtitle1 => GoogleFonts.getFont(
        'Nunito',
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 25,
      );
  static TextStyle get subtitle2 => GoogleFonts.getFont(
        'Nunito',
        color: Colors.white,
        fontWeight: FontWeight.normal,
        fontSize: 20,
      );
  static TextStyle get bodyText1 => GoogleFonts.getFont(
        'Nunito',
        color: Colors.white,
        fontWeight: FontWeight.w300,
        fontSize: 16,
      );
  static TextStyle get bodyText2 => GoogleFonts.getFont(
        'Nunito',
        color: Colors.white,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String fontFamily,
    Color color,
    double fontSize,
    FontWeight fontWeight,
    FontStyle fontStyle,
    bool useGoogleFonts = true,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
            );
}
