import 'package:flutter/material.dart';
import 'package:project_application/entity/soundmager.dart';
import 'package:provider/provider.dart';
import 'package:project_application/provider/usuario_provider.dart';
import 'package:project_application/screen/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';


class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  final List<Map<String, dynamic>> games = const [
    {
      'title': 'Devil May Cry',
      'image': 'assets/logos/logo_dmc1.png',
      'route': '/dmc1',
      'available': true,
    },
    {
      'title': 'Devil May Cry 2',
      'image': 'assets/logos/logo_dmc2.png',
      'available': false,
    },
    {
      'title': 'Devil May Cry 3',
      'image': 'assets/logos/logo_dmc3.png',
      'available': false,
    },
    {
      'title': 'Devil May Cry 4',
      'image': 'assets/logos/logo_dmc4.png',
      'available': false,
    },
    {
      'title': 'DmC: Devil May Cry',
      'image': 'assets/logos/logo_dmc_reboot.png',
      'available': false,
    },
    {
      'title': 'Devil May Cry 5',
      'image': 'assets/logos/logo_dmc5.png',
      'available': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final usuarioProvider = Provider.of<UsuarioProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(),
              child: Text('Devil May Cry App', style: TextStyle(fontSize: 20)),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Perfil'),
              onTap: () {
                SoundManager().playButton();
                Navigator.pop(context);
                Navigator.pushNamed(
                  context,
                  '/profile',
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Preferencias'),
              onTap: () {
                SoundManager().playButton();
                Navigator.pop(context);
                Navigator.pushNamed(context, '/preferencias');
              },
            ),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('Acerca de la App'),
              onTap: () {
                SoundManager().playButton();
                Navigator.pop(context);
                Navigator.pushNamed(context, '/about');
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Cerrar sesión'),
              onTap: () async {
                SoundManager().playButton();
                final confirm = await showDialog<bool>(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Confirmar'),
                    content: const Text('¿Estás seguro que deseas cerrar sesión?'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context, false),
                        child: const Text('Cancelar'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, true),
                        child: const Text('Cerrar sesión'),
                      ),
                    ],
                  ),
                );

                if (confirm == true) {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.clear();
                  usuarioProvider.clear();

                  if (!context.mounted) return;
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const LoginPage()),
                  );
                }
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.1,
          children: games.map((game) {
            return GestureDetector(
              onTap: () {
                SoundManager().playButton();
                if (game['available'] == true) {
                  Navigator.pushNamed(
                    context,
                    game['route'],
                    arguments: {'usuarioId': usuarioProvider.id},
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Próximamente disponible')),
                  );
                }
              },
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                elevation: 5,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        game['image'],
                        fit: BoxFit.contain,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                      width: double.infinity,
                      child: Text(
                        game['title'],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
