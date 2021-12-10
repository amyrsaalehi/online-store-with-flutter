import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_store/constants.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData(
    primaryColor: kPrimaryColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: GoogleFonts.latoTextTheme(
      Theme.of(context).textTheme,
    ),
    tabBarTheme: TabBarTheme(
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(
          color: Colors.white,
          width: 3,
        ),
      ),
      labelColor: kPrimaryColor,
      unselectedLabelColor: Colors.grey,
      labelStyle: GoogleFonts.latoTextTheme(
        Theme.of(context).textTheme,
      ).bodyText1,
      unselectedLabelStyle: GoogleFonts.latoTextTheme(
        Theme.of(context).textTheme,
      ).bodyText1,
    ),
    scaffoldBackgroundColor: Colors.white,
  );
}
