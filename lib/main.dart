import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'beautybar.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One United',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
// shadowColor: const Color(0xFF007D73),
          titleTextStyle: GoogleFonts.roboto(
// fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        textTheme: GoogleFonts.robotoTextTheme(),
        primarySwatch: Colors.teal,
      ),
      home: Main_Menu(),
    );
  }
}
