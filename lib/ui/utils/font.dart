import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// | NAME       | SIZE |  WEIGHT |  SPACING |             |
/// |------------|------|---------|----------|-------------|
/// | headline1  | 96.0 | light   | -1.5     |             |
/// | headline2  | 60.0 | light   | -0.5     |             |
/// | headline3  | 48.0 | regular |  0.0     |             |
/// | headline4  | 34.0 | regular |  0.25    |             |
/// | headline5  | 24.0 | regular |  0.0     |             |
/// | headline6  | 20.0 | medium  |  0.15    |             |
/// | subtitle1  | 16.0 | regular |  0.15    |             |
/// | subtitle2  | 14.0 | medium  |  0.1     |             |
/// | body1      | 16.0 | regular |  0.5     | (bodyText1) |
/// | body2      | 14.0 | regular |  0.25    | (bodyText2) |
/// | button     | 14.0 | medium  |  1.25    |             |
/// | caption    | 12.0 | regular |  0.4     |             |
/// | overline   | 10.0 | regular |  1.5     |             |
///

class FontConstants {
  static final _baseFont = GoogleFonts.arimoTextTheme().bodyLarge!;

  static final textTheme = GoogleFonts.arimoTextTheme(
    TextTheme(
      displayLarge: heading1,
      displayMedium: heading2,
      displaySmall: heading3,
      titleMedium: subtitle1,
      titleSmall: subtitle2,
      bodyLarge: body1,
      bodyMedium: body2,
      bodySmall: caption1,
      labelLarge: body1,
      labelSmall: subCaption1,
    ),
  );

  static final TextStyle heading1 = _baseFont.copyWith(
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle heading2 = _baseFont.copyWith(
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle heading3 = _baseFont.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle heading4 = _baseFont.copyWith(
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle subtitle1 = _baseFont.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle subtitleLink1 = _baseFont.copyWith(
    fontSize: 20,
    decoration: TextDecoration.underline,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle subtitle2 = _baseFont.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle body1 = _baseFont.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle bodyLink1 = _baseFont.copyWith(
    fontSize: 16,
    decoration: TextDecoration.underline,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle body2 = _baseFont.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle bodyLink2 = _baseFont.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle body3 = _baseFont.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle caption1 = _baseFont.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle captionLink1 = _baseFont.copyWith(
    fontSize: 14,
    decoration: TextDecoration.underline,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle caption2 = _baseFont.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle captionLink2 = _baseFont.copyWith(
    fontSize: 14,
    decoration: TextDecoration.underline,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle subCaption1 = _baseFont.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle subCaptionLink1 = _baseFont.copyWith(
    fontSize: 12,
    decoration: TextDecoration.underline,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle subCaption2 = _baseFont.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle subCaptionLink2 = _baseFont.copyWith(
    fontSize: 12,
    decoration: TextDecoration.underline,
    fontWeight: FontWeight.w400,
  );
}
