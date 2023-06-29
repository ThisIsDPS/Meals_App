import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app_4/screens/tabs.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: Colors.brown,
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(
    MaterialApp(
      title: 'Meals App',
      theme: theme,
      home: const TabsScreen(),
    ),
  );
}
