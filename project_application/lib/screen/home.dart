import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

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
              decoration: BoxDecoration(color: Color(0xFF8B0000)),
              child: Text('Devil May Cry App', style: TextStyle(fontSize: 20)),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: const Text('Perfil'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/profile');
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
                if (game['available'] == true) {
                  Navigator.pushNamed(context, game['route']);
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
