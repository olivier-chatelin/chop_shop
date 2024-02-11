import 'package:chop_shop/view/recipes/recipes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chop shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primarySwatch: Colors.lightBlue,
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: GoogleFonts.permanentMarker(
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
          bodyMedium: GoogleFonts.roboto(),
          displaySmall: GoogleFonts.pacifico(),
        ),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}


