import 'package:flutter/material.dart';
import 'package:project_application/entity/soundmager.dart';
import 'package:project_application/screen/logros.dart';
import 'package:project_application/screen/misiones.dart';
import 'package:project_application/screen/orbes.dart';
import 'package:provider/provider.dart';
import 'package:project_application/provider/usuario_provider.dart';

class Dmc1Screen extends StatelessWidget {
  const Dmc1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final int? usuarioId = Provider.of<UsuarioProvider>(context, listen: false).id;

    final List<Map<String, dynamic>> secciones = [
      {
        'titulo': 'Guía de Misiones, Rango S',
        'imagen': 'assets/logros/sensacion_sublime.jpg',
        'route': '/dmc1/misiones',
      },
      {
        'titulo': 'Fragmentos de Orbes Azules',
        'imagen': 'assets/images/orbe_azul.png',
        'route': '/dmc1/orbes',
      },
      {
        'titulo': 'Lista de Logros',
        'imagen': 'assets/images/logros.jpg',
        'route': '/dmc1/logros',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Devil May Cry 1'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: secciones.length,
        itemBuilder: (context, index) {
          final item = secciones[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(8),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  item['imagen'],
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                item['titulo'],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                SoundManager().playButton();
                if (item['route'] == '/dmc1/misiones') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => MisionesScreen(),
                    ),
                  );
                } else if (item['route'] == '/dmc1/logros') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LogrosScreen(),
                    ),
                  );
                } else if (item['route'] == '/dmc1/orbes') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const BlueOrbScreen(),
                    ),
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }
}
