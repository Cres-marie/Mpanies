import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mpanies/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //scaffoldBackgroundColor: backgroundColor,
        //   fontFamily: GoogleFonts.Bubblegum Sans().fontFamily,
        textTheme: GoogleFonts.josefinSansTextTheme(textTheme),
      ),
      home: Home(),
    );
  }
}
