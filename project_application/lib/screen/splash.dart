import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:project_application/screen/home.dart';
import 'package:project_application/screen/login_page.dart';
import 'package:project_application/provider/usuario_provider.dart';
import 'package:project_application/services/database_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkSession();
  }

  Future<void> _checkSession() async {
    final prefs = await SharedPreferences.getInstance();
    final nombre = prefs.getString('nombreUsuario');

    await Future.delayed(const Duration(seconds: 2));

    if (!mounted) return;

    if (nombre != null) {
      // Recuperar datos completos del usuario desde la BD
      final db = DatabaseHelper();
      final user = await db.loginUser(nombre, ''); // password vacío

      if (user != null && context.mounted) {
        Provider.of<UsuarioProvider>(context, listen: false).setUsuario(
          id: user.id!,
          nombre: user.nombreUsuario,
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const MyHomePage(title: 'Bienvenido')),
        );
        return;
      }
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(248, 65, 3, 3),
              Color.fromARGB(248, 0, 0, 0),
              Color.fromARGB(248, 65, 3, 3)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo_title.png',
              width: 300,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
