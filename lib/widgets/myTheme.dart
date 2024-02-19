import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 30, color: Colors.black)),
      iconTheme: const IconThemeData(color: Colors.white),
      textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          displayMedium: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          displaySmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          headlineLarge: TextStyle(
              fontWeight: FontWeight.w800, fontSize: 30, color: Colors.black)),
      canvasColor: blueGrey,
      cardColor: cardColor,
      primaryColorLight: Colors.blueGrey,
      fontFamily: GoogleFonts.poppins().fontFamily);

  static Color blueGrey = const Color(0xFFA2A7AF);
  static Color detailCardColor = const Color(0xFF66696E);
  static Color cardColor = Color.fromARGB(255, 111, 166, 218);
}
