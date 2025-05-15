import 'package:flutter/material.dart';
import 'package:project_application/entity/achievement.dart';

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
    _logrosCompletados = List.generate(logros.length, (index) => false);
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
                value: _logrosCompletados[index],
                onChanged: (value) {
                  setState(() {
                    _logrosCompletados[index] = value!;
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
