import 'package:caliber_sense/screens/home_screen.dart';
import 'package:caliber_sense/screens/tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:google_fonts/google_fonts.dart';

final colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 102, 6, 247),

  primary: Colors.white, // Primary color is set to white
  onPrimary: Colors.black, // Text/icons on primary (white) will be black

  secondary: const Color.fromARGB(
      255, 139, 147, 255), // Blue as the secondary color for accents
  onSecondary: Colors.black, // Text/icons on secondary (blue) will be white

  surface:
      Colors.white, // Surface color for components like cards, sheets, etc.
  onSurface: Colors.black87, // Text/icons on surface will be black or dark

  error: Colors.red, // Red color for errors
  onError: Colors.white, // White text/icons on error color
);

final theme = ThemeData().copyWith(
  //useMaterial3: true,
  scaffoldBackgroundColor: colorScheme.surface,
  colorScheme: colorScheme,
  textTheme: GoogleFonts.ubuntuCondensedTextTheme().copyWith(
    titleSmall: GoogleFonts.ubuntuCondensed(
      fontWeight: FontWeight.bold,
    ),
    titleMedium: GoogleFonts.ubuntuCondensed(
      fontWeight: FontWeight.bold,
    ),
    titleLarge: GoogleFonts.ubuntuCondensed(
      fontWeight: FontWeight.bold,
    ),
  ),
);

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Caliber Sense',
      theme: theme,
      home: const TabScreen(),
    );
  }
}
