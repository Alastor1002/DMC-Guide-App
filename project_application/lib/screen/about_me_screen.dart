import 'package:flutter/material.dart';
import 'encuesta_screen.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Acerca de la App')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'DMC Guide',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Este proyecto busca ofrecer una experiencia interactiva para los fanáticos de Devil May Cry. '
              'La app muestra logros y misiones del juego Devil May Cry 1 y establece la base para agregar otros títulos de la saga.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            const Text(
              'Creador:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text('José Nicolás Migueles Marambio'),
            const SizedBox(height: 12),
            const Text(
              'Correo de contacto:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text('jmigueles21@alumnos.utalca.cl'),
            const SizedBox(height: 32),

            Center(
              child: ElevatedButton.icon(
                icon: const Icon(Icons.assignment),
                label: const Text('Responder encuesta'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const EncuestaScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
