import 'package:flutter/material.dart';
import 'package:project_application/entity/orb_fragment_data.dart';
import 'package:project_application/services/database_helper.dart';
import 'package:project_application/provider/usuario_provider.dart';
import 'package:provider/provider.dart';

class BlueOrbScreen extends StatefulWidget {
  const BlueOrbScreen({super.key});

  @override
  State<BlueOrbScreen> createState() => _BlueOrbScreenState();
}

class _BlueOrbScreenState extends State<BlueOrbScreen> {
  late int usuarioId;
  Set<String> orbesRecolectados = {};

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      usuarioId = Provider.of<UsuarioProvider>(context, listen: false).id!;
      _loadOrbes();
    });
  }

  Future<void> _loadOrbes() async {
    final db = DatabaseHelper();
    final orbes = await db.getOrbesRecolectados(usuarioId);
    setState(() {
      orbesRecolectados = orbes.toSet();
    });
  }

  Future<void> _toggleOrbe(String descripcion) async {
    final db = DatabaseHelper();
    await db.toggleOrbFragment(usuarioId, descripcion);
    await _loadOrbes();
  }

  @override
  Widget build(BuildContext context) {
    final total = orbData.values.expand((list) => list).length;
    final recolectados = orbesRecolectados.length;

    return Scaffold(
      appBar: AppBar(
        title: Text('Fragmentos de Orbes Azules ($recolectados / $total)'),
      ),
      body: ListView(
        children: orbData.entries.map((entry) {
          return ExpansionTile(
            title: Text(entry.key, style: const TextStyle(fontWeight: FontWeight.bold)),
            children: entry.value.map((desc) {
              final isRecolectado = orbesRecolectados.contains(desc);
              return ListTile(
                title: Text(desc),
                trailing: Icon(
                  isRecolectado ? Icons.check_circle : Icons.radio_button_unchecked,
                  color: isRecolectado ? Colors.green : Colors.grey,
                ),
                onTap: () => _toggleOrbe(desc),
              );
            }).toList(),
          );
        }).toList(),
      ),
    );
  }
}
