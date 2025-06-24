import 'package:flutter/material.dart';
import 'package:project_application/services/database_helper.dart';
import 'package:project_application/screen/home.dart';
import 'package:project_application/screen/register_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:project_application/provider/usuario_provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Future<void> _login() async {
    final nombreUsuario = _usernameController.text.trim();
    final password = _passwordController.text.trim();

    final user = await DatabaseHelper().loginUser(nombreUsuario, password);

    if (user != null) {
      final usuarioProvider = Provider.of<UsuarioProvider>(context, listen: false);
      usuarioProvider.setUsuario(id: user.id!, nombre: user.nombreUsuario);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const MyHomePage(title: 'Bienvenido'),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Credenciales incorrectas')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Iniciar Sesión')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(labelText: 'Usuario'),
                validator: (value) =>
                    value!.isEmpty ? 'Ingrese un nombre de usuario' : null,
              ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Contraseña'),
                obscureText: true,
                validator: (value) =>
                    value!.isEmpty ? 'Ingrese una contraseña' : null,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) _login();
                },
                child: const Text('Ingresar'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const RegisterPage()),
                  );
                },
                child: const Text('¿No tienes cuenta? Regístrate'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
