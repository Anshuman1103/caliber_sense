import 'package:caliber_sense/screens/tab.dart';
import 'package:caliber_sense/utilities/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:google_fonts/google_fonts.dart';

const colorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color.fromARGB(255, 170, 140, 255), // Main brand color: 8667F2
  onPrimary:
      Color.fromARGB(255, 255, 255, 255), // Text/icons on primary: FFFFFF

  secondary: Color.fromARGB(255, 238, 233, 255), // Accent color: E0E7FF
  onSecondary: Color.fromARGB(255, 0, 0, 0), // Text/icons on secondary: Black

  surface: Color.fromARGB(
      255, 255, 255, 255), // Surface color for cards/sheets: E0E7FF
  onSurface: Color.fromARGB(255, 0, 0, 0), // Text/icons on surface: Black

  error: Color.fromARGB(255, 255, 0, 0), // Error color: Red
  onError: Color.fromARGB(255, 255, 255, 255), // Text/icons on error: White
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
      home: Builder(
        builder: (context) {
          ScreenSize.init(context); // Initialize dimensions
          return const TabScreen();
        },
      ),
    );
  }
}
