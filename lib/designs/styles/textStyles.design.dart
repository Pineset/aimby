import 'package:aimby/designs/styles/color.design.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class _DesignFonts {
  static TextStyle kalam({
    required Color color,
    required FontWeight fontWeight,
    required double size,
  }) =>
      GoogleFonts.kalam(
        color: color,
        fontWeight: fontWeight,
        fontSize: size,
      );

  static TextStyle montserrat({
    required Color color,
    required FontWeight fontWeight,
    required double size,
  }) =>
      GoogleFonts.montserrat(
        color: color,
        fontWeight: fontWeight,
        fontSize: size,
      );
}

///
/// Text Styles to be used in the app according to the design system
///
class DesignTextStyles {
  static TextStyle headingOne() => _DesignFonts.kalam(
        color: DesignColors.black,
        fontWeight: FontWeight.w400,
        size: 50,
      );

  static TextStyle headingTwo() => _DesignFonts.kalam(
        color: DesignColors.black,
        fontWeight: FontWeight.w700,
        size: 50,
      );

  static TextStyle headingThree() => _DesignFonts.kalam(
        color: DesignColors.black,
        fontWeight: FontWeight.w400,
        size: 24,
      );

  static TextStyle bText({Color? color}) =>
      _DesignFonts.kalam(
        color: color ?? DesignColors.white,
        fontWeight: FontWeight.w700,
        size: 20,
      );

  static TextStyle bodyOne() => _DesignFonts.montserrat(
        color: DesignColors.black,
        fontWeight: FontWeight.w600,
        size: 24,
      );

  static TextStyle bodyTwo() => _DesignFonts.montserrat(
        color: DesignColors.black,
        fontWeight: FontWeight.w500,
        size: 16,
      );
}
