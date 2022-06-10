import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const MaterialColor primaryBlack = MaterialColor(
  _blackPrimaryValue,
  <int, Color>{
    50: Color(_blackPrimaryValue),
    100: Color(_blackPrimaryValue),
    200: Color(_blackPrimaryValue),
    300: Color(_blackPrimaryValue),
    400: Color(_blackPrimaryValue),
    500: Color(_blackPrimaryValue),
    600: Color(_blackPrimaryValue),
    700: Color(_blackPrimaryValue),
    800: Color(_blackPrimaryValue),
    900: Color(_blackPrimaryValue),
  },
);

const int _blackPrimaryValue = 0xFF000000;

var solariumTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: GoogleFonts.poppins().fontFamily,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: primaryBlack,
    accentColor: Colors.red,
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 36.0,
      fontWeight: FontWeight.bold,
      color: primaryBlack,
    ),
    headline2: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: primaryBlack,
    ),
    bodyText1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.normal),
  ),
);
