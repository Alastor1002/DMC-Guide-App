import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:project_application/entity/soundmager.dart';
import 'package:project_application/provider/theme_provider.dart';

class PreferenciasScreen extends StatefulWidget {
  const PreferenciasScreen({super.key});

  @override
  State<PreferenciasScreen> createState() => _PreferenciasScreenState();
}

class _PreferenciasScreenState extends State<PreferenciasScreen> {
  bool _sonidoActivo = true;
  String _sonidoSeleccionado = 'menu';

  final Map<String, String> _nombresSonido = {
    'menu': 'Sonido por defecto',
    'yamato': 'Tema Yamato (Katana)',
  };

  @override
  void initState() {
    super.initState();
    _cargarPreferencias();
  }

  Future<void> _cargarPreferencias() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _sonidoActivo = prefs.getBool('sonidoActivo') ?? true;
      _sonidoSeleccionado = prefs.getString('buttonSound') ?? 'menu';
    });
  }

  Future<void> _guardarSonidoActivo(bool activo) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('sonidoActivo', activo);
    setState(() => _sonidoActivo = activo);
  }

  Future<void> _cambiarSonido(String nuevoSonido) async {
    await SoundManager().setButtonSound(nuevoSonido);
    if (_sonidoActivo) {
      await SoundManager().playButton();
    }
    setState(() => _sonidoSeleccionado = nuevoSonido);
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final currentTheme = themeProvider.currentTheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Preferencias')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('Tema de la aplicación', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          DropdownButton<AppTheme>(
            value: currentTheme,
            isExpanded: true,
            items: const [
              DropdownMenuItem(
                value: AppTheme.dante,
                child: Text('Tema Dante (Rojo)'),
              ),
              DropdownMenuItem(
                value: AppTheme.vergil,
                child: Text('Tema Vergil (Azul)'),
              ),
            ],
            onChanged: (value) {
              if (value != null) {
                themeProvider.setTheme(value);
              }
            },
          ),
          const Divider(height: 32),
          SwitchListTile(
            title: const Text('Activar sonidos'),
            value: _sonidoActivo,
            onChanged: (value) => _guardarSonidoActivo(value),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text('Sonido de botones', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          ..._nombresSonido.entries.map((entry) {
            return RadioListTile<String>(
              title: Text(entry.value),
              value: entry.key,
              groupValue: _sonidoSeleccionado,
              onChanged: _sonidoActivo
                  ? (value) => _cambiarSonido(value!)
                  : null,
            );
          }),
        ],
      ),
    );
  }
}
