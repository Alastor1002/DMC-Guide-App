import 'package:flutter/material.dart';
import 'package:project_application/services/database_helper.dart';
import 'package:project_application/models/usuario.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Future<void> _register() async {
    final nombreUsuario = _usernameController.text.trim();
    final password = _passwordController.text.trim();

    final dbHelper = DatabaseHelper();
    final exists = await dbHelper.userExists(nombreUsuario);

    if (exists) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('El usuario ya existe')),
      );
      return;
    }

    await dbHelper.registerUser(
      Usuario(nombreUsuario: nombreUsuario, password: password),
    );

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Usuario registrado')),
    );

    Navigator.pop(context); // Volver al login
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registrarse')),
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
                  if (_formKey.currentState!.validate()) _register();
                },
                child: const Text('Registrarse'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
