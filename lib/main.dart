import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/services.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 18, 221, 194),
);
var kDarkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 14, 17, 15),
);
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((val) {});
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        brightness: Brightness.dark,
        useMaterial3: true,
        // colorScheme: kDarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.onPrimaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
        ),
      ),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.secondaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.primaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer),
        ),
        textTheme: const TextTheme().copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: kColorScheme.onPrimaryContainer,
          ),
          titleMedium: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: kColorScheme.onTertiaryContainer,
          ),
        ),
      ),
      themeMode: ThemeMode.dark,
      home: const Expenses(),
    ),
  );
}
