import 'package:flutter/material.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
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
        body: const TabBarView(
          children: [
            _ResumenTab(),
            _ProgresoTab(),
          ],
        ),
      ),
    );
  }
}

class _ResumenTab extends StatelessWidget {
  const _ResumenTab();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/avatar.jpg'),
          ),
          const SizedBox(height: 16),
          const Text('AlastorRedgrave', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text('Cazador de demonios', style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}

class _ProgresoTab extends StatelessWidget {
  const _ProgresoTab();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        ListTile(
          leading: Icon(Icons.check_circle_outline),
          title: Text('Misiones completadas'),
          trailing: Text('17 / 23'),
        ),
        ListTile(
          leading: Icon(Icons.star_border),
          title: Text('Logros desbloqueados'),
          trailing: Text('30 / 33'),
        ),
        ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text('Fragmentos de orbe azul'),
          trailing: Text('43 / 44'),
        ),
      ],
    );
  }
}
