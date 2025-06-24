import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:project_application/entity/achievement.dart';
import 'package:project_application/services/database_helper.dart';
import 'package:project_application/provider/usuario_provider.dart';

class LogrosScreen extends StatefulWidget {
  const LogrosScreen({super.key});

  @override
  State<LogrosScreen> createState() => _LogrosScreenState();
}

class _LogrosScreenState extends State<LogrosScreen> {
  List<bool> _logrosCompletados = [];

  @override
  void initState() {
    super.initState();
    _loadProgreso();
  }

  Future<void> _loadProgreso() async {
    final usuarioId = Provider.of<UsuarioProvider>(context, listen: false).id;
    final db = DatabaseHelper();
    final progreso = await db.getLogrosCompletados(usuarioId!);

    setState(() {
      _logrosCompletados = List.generate(
        logros.length,
        (index) => progreso.contains(index),
      );
    });
  }

  Future<void> _toggleLogro(int index, bool completado) async {
    final usuarioId = Provider.of<UsuarioProvider>(context, listen: false).id;
    final db = DatabaseHelper();
    await db.setProgresoLogro(usuarioId!, index, completado);

    setState(() {
      _logrosCompletados[index] = completado;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logros - DMC1'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
        itemCount: logros.length,
        itemBuilder: (context, index) {
          final logro = logros[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset(
                  'assets/logros/${logro['imagen']}',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.image_not_supported);
                  },
                ),
              ),
              title: Text(logro['titulo']!),
              subtitle: Text(logro['descripcion']!),
              trailing: Checkbox(
                value: _logrosCompletados.length > index && _logrosCompletados[index],
                onChanged: (value) {
                  if (value != null) {
                    _toggleLogro(index, value);
                  }
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
