import 'package:flutter/material.dart';

class Dmc1Screen extends StatelessWidget {
  const Dmc1Screen({super.key});

  @override
  Widget build(BuildContext context) {
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
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, item['route']);
              },
            ),
          );
        },
      ),
    );
  }
}
