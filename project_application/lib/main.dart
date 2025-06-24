import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:project_application/provider/theme_provider.dart';
import 'package:project_application/screen/about_me_screen.dart';
import 'package:project_application/screen/preference_screen.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/sqflite.dart';

import 'package:project_application/services/database_helper.dart';
import 'package:project_application/screen/splash.dart';
import 'package:project_application/screen/profile.dart';
import 'package:project_application/screen/dmc1.dart';
import 'package:project_application/screen/misiones.dart';
import 'package:project_application/screen/orbes.dart';
import 'package:project_application/screen/logros.dart';
import 'package:project_application/provider/usuario_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //resetDatabase();
  await DatabaseHelper().database;

  runApp(const MyApp());
}

Future<void> resetDatabase() async {
  final dbPath = await getDatabasesPath();
  final path = join(dbPath, 'dmc_app.db');
  await deleteDatabase(path);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UsuarioProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, _) {
          return MaterialApp(
            title: 'DMC Guide',
            debugShowCheckedModeBanner: false,
            theme: themeProvider.themeData,
            home: const SplashScreen(),
            routes: {
              '/dmc1': (context) => const Dmc1Screen(),
              '/dmc1/logros': (context) => const LogrosScreen(),
              '/dmc1/misiones': (context) => const MisionesScreen(),
              '/dmc1/orbes': (context) => const BlueOrbScreen(),
              '/profile': (context) => const MyProfilePage(),
              '/preferencias': (context) => const PreferenciasScreen(),
              '/about': (context) => const AboutScreen(),
            },
          );
        },
      ),
    );
  }
}
