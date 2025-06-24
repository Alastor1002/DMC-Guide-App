import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:project_application/models/preguntas.dart';

class EncuestaScreen extends StatefulWidget {
  const EncuestaScreen({super.key});

  @override
  State<EncuestaScreen> createState() => _EncuestaScreenState();
}

class _EncuestaScreenState extends State<EncuestaScreen> {
  Map<String, List<Pregunta>> secciones = {};

  @override
  void initState() {
    super.initState();
    _cargarPreguntas();
  }

  Future<void> _cargarPreguntas() async {
    final String jsonStr = await rootBundle.loadString('assets/data/preguntas.json');
    final Map<String, dynamic> data = json.decode(jsonStr);
    setState(() {
      secciones = (data as Map<String, dynamic>).map(
        (key, value) => MapEntry(
          key,
          List<Pregunta>.from(
            (value as List).map((q) => Pregunta.fromJson(q)),
          ),
        ),
      );
    });
  }

  Widget _buildPregunta(Pregunta pregunta) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(pregunta.titulo, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Row(
              children: List.generate(5, (index) {
                return IconButton(
                  icon: Icon(
                    index < pregunta.valor ? Icons.star : Icons.star_border,
                    color: Colors.amber,
                  ),
                  onPressed: () {
                    setState(() => pregunta.valor = index + 1);
                  },
                );
              }),
            ),
            const SizedBox(height: 4),
            Text('Min: ${pregunta.min}', style: const TextStyle(fontSize: 12, color: Colors.grey)),
            Text('Max: ${pregunta.max}', style: const TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
      ),
    );
  }

  Future<void> _compartirRespuestas() async {
    final buffer = StringBuffer();

    secciones.forEach((seccion, preguntas) {
      buffer.writeln('SECCIÓN: ${seccion.toUpperCase()}');
      for (var p in preguntas) {
        buffer.writeln('${p.titulo}');
        buffer.writeln('Respuesta: ${p.valor} estrellas\n');
      }
      buffer.writeln('--------------------------------------\n');
    });

    final dir = await getTemporaryDirectory();
    final file = File('${dir.path}/respuestas_encuesta.txt');
    await file.writeAsString(buffer.toString());

    await Share.shareXFiles([XFile(file.path)], text: 'Respuestas de la encuesta DMC Guide');
  }

  @override
  Widget build(BuildContext context) {
    if (secciones.isEmpty) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Encuesta de Usuario')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: secciones.entries.map((entry) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(entry.key.toUpperCase(), style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              ...entry.value.map(_buildPregunta).toList(),
              const Divider(height: 30),
            ],
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _compartirRespuestas,
        icon: const Icon(Icons.share),
        label: const Text('Compartir Respuestas'),
      ),
    );
  }
}
