import 'package:chop_shop/desing/chop_colors/chop_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


final ThemeData mainTheme = ThemeData(
  primaryColor: ChopColors.primaryColor,

  textTheme: TextTheme(
    displayLarge: const TextStyle(
      fontSize: 72,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: GoogleFonts.permanentMarker(
      fontSize: 30,
      color: ChopColors.selectedColor
      // fontStyle: FontStyle.italic,
    ),
    bodyMedium: GoogleFonts.roboto(),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: ChopColors.cta,
    elevation: 20,
    iconSize: 30,
    shape: CircleBorder()
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: ChopColors.primaryColor,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: ChopColors.primaryColor,
    selectedItemColor: ChopColors.selectedColor,
    unselectedItemColor: ChopColors.disable,

  ),
  scaffoldBackgroundColor: ChopColors.white,
  cardTheme:  CardTheme(
    color: ChopColors.primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),

    ),
    elevation: 20,
    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
    shadowColor: ChopColors.borderColor
  ),
  useMaterial3: true,
);