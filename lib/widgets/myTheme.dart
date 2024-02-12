import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blueGrey,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white)),
      canvasColor: blueGrey,
      cardColor: cardColor,
      
      primaryColorLight: Colors.blueGrey,
      fontFamily: GoogleFonts.poppins().fontFamily);

  static Color blueGrey = const Color(0xFFA2A7AF);
  static Color cardColor =const  Color(0xB9ECC680);
}
