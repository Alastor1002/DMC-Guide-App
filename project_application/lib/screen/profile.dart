import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_application/entity/soundmager.dart';
import 'package:provider/provider.dart';
import 'package:project_application/services/database_helper.dart';
import 'package:project_application/provider/usuario_provider.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  int _misionesCompletadas = 0;
  int _logrosDesbloqueados = 0;
  int _orbesRecolectados = 0;
  File? _imageFile;

  @override
  void initState() {
    super.initState();
    _cargarDatos();
  }

  Future<void> _cargarDatos() async {
    final usuarioId = Provider.of<UsuarioProvider>(context, listen: false).id;
    final db = DatabaseHelper();
    final misiones = await db.getMisionesCompletadas(usuarioId!);
    final logros = await db.getLogrosCompletados(usuarioId);
    final orbes = await db.getOrbesRecolectados(usuarioId);

    setState(() {
      _misionesCompletadas = misiones.length;
      _logrosDesbloqueados = logros.length;
      _orbesRecolectados = orbes.length;
    });
  }

  Future<void> _seleccionarImagen() async {
    final picker = ImagePicker();
    final opcion = await showModalBottomSheet<String>(
      context: context,
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(Icons.camera_alt),
            title: const Text('Usar cámara'),
            onTap: () => Navigator.pop(context, 'camara'),
          ),
          ListTile(
            leading: const Icon(Icons.photo_library),
            title: const Text('Elegir de la galería'),
            onTap: () => Navigator.pop(context, 'galeria'),
          ),
        ],
      ),
    );

    if (opcion == null) return;

    final XFile? imagenSeleccionada = await picker.pickImage(
      source: opcion == 'camara' ? ImageSource.camera : ImageSource.gallery,
    );

    if (imagenSeleccionada != null) {
      setState(() {
        _imageFile = File(imagenSeleccionada.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final username = Provider.of<UsuarioProvider>(context).nombre;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Perfil'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person), text: 'Resumen'),
              Tab(icon: Icon(Icons.bar_chart), text: 'Progreso'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _ResumenTab(
              username: username,
              imageFile: _imageFile,
              onAvatarTap: _seleccionarImagen,
            ),
            _ProgresoTab(
              misionesCompletadas: _misionesCompletadas,
              logrosDesbloqueados: _logrosDesbloqueados,
              orbesRecolectados: _orbesRecolectados,
            ),
          ],
        ),
      ),
    );
  }
}

class _ResumenTab extends StatelessWidget {
  final String username;
  final File? imageFile;
  final VoidCallback onAvatarTap;

  const _ResumenTab({
    required this.username,
    required this.imageFile,
    required this.onAvatarTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              GestureDetector(
                onTap: onAvatarTap,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: imageFile != null
                      ? FileImage(imageFile!)
                      : const AssetImage('assets/images/avatar.jpg') as ImageProvider,
                ),
              ),
              Positioned(
                bottom: 4,
                right: 4,
                child: GestureDetector(
                  onTap: onAvatarTap,
                  child: const CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.black54,
                    child: Icon(
                      Icons.camera_alt,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            username.isNotEmpty ? username : 'Cargando...',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text('Cazador de demonios', style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}

class _ProgresoTab extends StatelessWidget {
  final int misionesCompletadas;
  final int logrosDesbloqueados;
  final int orbesRecolectados;

  const _ProgresoTab({
    required this.misionesCompletadas,
    required this.logrosDesbloqueados,
    required this.orbesRecolectados,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        ListTile(
          leading: const Icon(Icons.check_circle_outline),
          title: const Text('Misiones completadas'),
          trailing: Text('$misionesCompletadas / 23'),
        ),
        ListTile(
          leading: const Icon(Icons.star_border),
          title: const Text('Logros desbloqueados'),
          trailing: Text('$logrosDesbloqueados / 33'),
        ),
        ListTile(
          leading: const Icon(Icons.favorite_border),
          title: const Text('Fragmentos de orbe azul'),
          trailing: Text('$orbesRecolectados / 44'),
        ),
      ],
    );
  }
}
