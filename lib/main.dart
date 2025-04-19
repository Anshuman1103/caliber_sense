import 'package:caliber_sense/screens/tab.dart';
import 'package:caliber_sense/utilities/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:google_fonts/google_fonts.dart';

const colorScheme = ColorScheme(
  brightness: Brightness.dark,
  // Primary brand color – a soft purple accent for dark backgrounds
  primary: Color.fromARGB(255, 106, 13, 173), // #AA8CFF

  // Text/icon color used on top of primary color (should be light in dark theme)
  onPrimary: Color.fromARGB(
      255, 255, 255, 255), // Black for better contrast on light primary

  // Secondary accent color (lighter tone for cards/buttons)
  secondary: Color.fromARGB(255, 37, 43, 55), // #7668C0

  // Text/icon color on secondary (should be light)
  onSecondary: Color.fromARGB(255, 255, 255, 255), // White

  // Background surface like Scaffold, cards, sheets
  surface: Color.fromARGB(255, 51, 60, 77), // #1C1C1E - dark grey

  // Text/icons on top of surface
  onSurface: Color.fromARGB(255, 255, 255, 255), // White

  // Error red
  error: Color.fromARGB(255, 255, 69, 58), // Soft red for dark background

  // Text/icons on error surfaces
  onError: Color.fromARGB(255, 255, 255, 255), // White
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
