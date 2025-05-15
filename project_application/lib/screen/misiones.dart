import 'package:flutter/material.dart';
import 'package:project_application/entity/mission.dart';

class MisionesScreen extends StatefulWidget {
  const MisionesScreen({super.key});

  @override
  State<MisionesScreen> createState() => _MisionesScreenState();
}

class _MisionesScreenState extends State<MisionesScreen> {
  List<bool> _misionesCompletadas = [];

  @override
  void initState() {
    super.initState();
    _misionesCompletadas = List.generate(missions.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Devil May Cry 1'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
        itemCount: missions.length,
        itemBuilder: (context, index) {
          final mission = missions[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 4,
            child: ListTile(
              leading: const Icon(Icons.star),
              title: Text(mission.name),
              subtitle: Text('Tiempo: ${mission.time} - Orbes: ${mission.orbs}'),
              trailing: Checkbox(
                value: _misionesCompletadas[index],
                onChanged: (value) {
                  setState(() {
                    _misionesCompletadas[index] = value!;
                  });
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
