import 'package:caliber_sense/screens/tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:google_fonts/google_fonts.dart';

final colorScheme = ColorScheme(
  brightness: Brightness.dark,

  primary: const Color.fromARGB(255, 134, 103, 242), // Main brand color: 8667F2
  onPrimary:
      const Color.fromARGB(255, 255, 255, 255), // Text/icons on primary: FFFFFF

  secondary: const Color.fromARGB(255, 238, 233, 255), // Accent color: E0E7FF
  onSecondary:
      const Color.fromARGB(255, 0, 0, 0), // Text/icons on secondary: Black

  surface: const Color.fromARGB(
      255, 255, 255, 255), // Surface color for cards/sheets: E0E7FF
  onSurface: const Color.fromARGB(255, 0, 0, 0), // Text/icons on surface: Black

  error: const Color.fromARGB(255, 255, 0, 0), // Error color: Red
  onError:
      const Color.fromARGB(255, 255, 255, 255), // Text/icons on error: White
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
