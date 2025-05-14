import 'package:flutter/material.dart';
import 'package:project_application/screen/home.dart';
import 'package:project_application/screen/profile.dart';
import 'package:project_application/screen/dmc1.dart';
import 'package:project_application/screen/misiones.dart';
import 'package:project_application/screen/orbes.dart';
import 'package:project_application/screen/logros.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DMC Guide',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF8B0000), 
        scaffoldBackgroundColor: Colors.black, // Fondo principal
        cardColor: const Color(0xFF1F1F1F), // Tarjetas o contenedores
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF8B0000),
          foregroundColor: Colors.white,
          elevation: 4,
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white70),
          bodySmall: TextStyle(color: Colors.grey),
        ),
        iconTheme: const IconThemeData(
          color: Color(0xFFB22222),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFD32F2F),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        snackBarTheme: const SnackBarThemeData(
          backgroundColor: Color(0xFFB71C1C),
          contentTextStyle: TextStyle(color: Colors.white),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Devil May Cry Guide'),
      routes: {
        '/dmc1': (context) => const Dmc1Screen(),
        '/dmc1/misiones': (context) => const MisionesScreen(),
        '/dmc1/logros': (context) => const LogrosScreen(),
        '/dmc1/orbes': (context) => const BlueOrbScreen(),
        '/profile': (context) => const MyProfilePage(),
      },
    );
  }
}
