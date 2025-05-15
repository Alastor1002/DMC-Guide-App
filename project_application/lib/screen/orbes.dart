import 'package:flutter/material.dart';
import 'package:project_application/entity/orb_fragment_data.dart';

class BlueOrbScreen extends StatelessWidget {
  const BlueOrbScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fragmentos de Orbes Azules'),
      ),
      body: ListView(
        children: orbData.entries.map((entry) {
          return ExpansionTile(
            title: Text(entry.key, style: const TextStyle(fontWeight: FontWeight.bold)),
            children: entry.value.map((desc) => ListTile(title: Text(desc))).toList(),
          );
        }).toList(),
      ),
    );
  }
}
