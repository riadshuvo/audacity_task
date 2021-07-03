import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle commonPoppinsTextStyle({Color? color, FontWeight? fontWeight, double? size}) =>
    GoogleFonts.poppins(
      fontWeight: fontWeight,
      color: color,
      fontSize: size,
    );
