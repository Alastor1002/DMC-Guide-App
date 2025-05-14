import 'package:flutter/material.dart';

class LogrosScreen extends StatelessWidget {
  const LogrosScreen({super.key});

  final List<Map<String, String>> logros = const [
    {
      'titulo': '¡A calentar motores!',
      'descripcion': 'Acaba el juego en el modo normal.',
      'imagen': 'a_calentar_motores.jpg'
    },
    {
      'titulo': '¡Caliente, caliente!',
      'descripcion': 'Acaba el juego en el modo difícil.',
      'imagen': 'caliente_caliente.jpg'
    },
    {
      'titulo': '¡Fuegooo!',
      'descripcion': 'Acaba el juego en el modo Dante debe morir (Dante Must Die Mode).',
      'imagen': 'fuegooo.jpg'
    },
    {
      'titulo': 'El detalle marca la diferencia',
      'descripcion': 'Compra todas las destrezas de Dante.',
      'imagen': 'el_detalle_marca_la_diferencia.jpg'
    },
    {
      'titulo': '¿Sabes guardar un secreto?',
      'descripcion': 'Supera una misión secreta.',
      'imagen': 'sabes_guardar_un_secreto.jpg',
    },
    {
      'titulo': 'Seis secretos',
      'descripcion': 'Supera seis misiones secretas.',
      'imagen': 'seis_secretos.jpg'
    },
    {
      'titulo': 'Secreto en el aire',
      'descripcion': 'Supera todas las misiones secretas.',
      'imagen': 'secreto_en_el_aire.jpg'
    },
    {
      'titulo': 'Sensación sublime',
      'descripcion': 'Consigue un rango S en alguna misión.',
      'imagen': 'sensacion_sublime.jpg'
    },
    {
      'titulo': 'Aracnofobia',
      'descripcion': 'Sobrevive a un encuentro con Phantom.',
      'imagen': 'aracnofobia.jpg'
    },
    {
      'titulo': 'No eres un angelito',
      'descripcion': 'Sobrevive a un encuentro con Nelo Angelo.',
      'imagen': 'no_eres_un_angelito.jpg'
    },
    {
      'titulo': 'Aplastado como un bicharraco',
      'descripcion': 'Derrota a Phantom.',
      'imagen': 'aplastado_como_un_bicharraco.jpg'
    },
    {
      'titulo': 'Aves de presa',
      'descripcion': 'Sobrevive a un encuentro con Griffon.',
      'imagen': 'aves_de_presa.jpg'
    },
    {
      'titulo': 'Halo hecho añicos',
      'descripcion': 'Lucha contra Nelo Angelo por segunda vez e imponte.',
      'imagen': 'halo_hecho_añicos.jpg'
    },
    {
      'titulo': 'Abstinencia',
      'descripcion': 'Lucha contra Griffon por segunda vez e imponte.',
      'imagen': 'abstinencia.jpg'
    },
    {
      'titulo': 'Con las pilas puestas',
      'descripcion': 'Derrota a Griffon.',
      'imagen': 'con_las_pilas_puestas.jpg'
    },
    {
      'titulo': 'Pesadillas de medianoche',
      'descripcion': 'Sobrevive a un encuentro con Nightmare.',
      'imagen': 'pesadillas_de_medianoche.jpg'
    },
    {
      'titulo': 'Ángel caído',
      'descripcion': 'Derrota a Nelo Angelo.',
      'imagen': 'angel_caido.jpg'
    },
    {
      'titulo': 'Dulces sueños',
      'descripcion': 'Lucha contra Nightmare por segunda vez e imponte.',
      'imagen': 'dulces_sueños.jpg'
    },
    {
      'titulo': 'Adiós a la pesadilla',
      'descripcion': 'Derrota a Nightmare.',
      'imagen': 'adios_a_la_pesadilla.jpg'
    },
    {
      'titulo': 'El diablo pasó por...',
      'descripcion': 'Derrota a Mundus.',
      'imagen': 'el_diablo_paso_por.jpg'
    },
    {
      'titulo': 'Atónito',
      'descripcion': 'Realiza un combo de rango S con "Alastor".',
      'imagen': 'atonito.jpg'
    },
    {
      'titulo': 'Calor infernal',
      'descripcion': 'Realiza un combo de rango S con "Ifrit".',
      'imagen': 'calor_infernal.jpg'
    },
    {
      'titulo': 'Tabla de contenidos',
      'descripcion': 'Desbloquea a todos los enemigos del menú de estado.',
      'imagen': 'tabla_de_contenidos.jpg'
    },
    {
      'titulo': 'Empollón',
      'descripcion': 'Desbloquea el 50% de las entradas de los enemigos del menú de estado.',
      'imagen': 'empollon.jpg'
    },
    {
      'titulo': 'Eres muy transparente',
      'descripcion': 'Desbloquea todas las entradas de los enemigos del menú de estado.',
      'imagen': 'eres_muy_transparente.jpg'
    },
    {
      'titulo': 'Rojo de furia',
      'descripcion': 'Recoge 10,000 gemas rojas.',
      'imagen': 'rojo_de_furia.jpg'
    },
    {
      'titulo': 'La sangre colorada',
      'descripcion': 'Recoge 25,000 gemas rojas.',
      'imagen': 'la_sangre_colorada.jpg'
    },
    {
      'titulo': 'Salvación',
      'descripcion': 'Recoge 50,000 gemas rojas.',
      'imagen': 'salvacion.jpg'
    },
    {
      'titulo': 'Demonio azul',
      'descripcion': 'Consigue una gema azul.',
      'imagen': 'demonio_azul.jpg'
    },
    {
      'titulo': 'Diablo azul',
      'descripcion': 'Establece al tope la barra de salud.',
      'imagen': 'diablo_azul.jpg'
    },
    {
      'titulo': 'Recogearmas',
      'descripcion': 'Recoge todas las armas de fuego.',
      'imagen': 'recogearmas.jpg'
    },
    {
      'titulo': 'Yo no he sido',
      'descripcion': 'Acaba el juego sin usar gemas amarillas.',
      'imagen': 'yo_no_he_sido.jpg'
    },
    {
      'titulo': 'Inalcanzable',
      'descripcion': 'Supera una misión sin sufrir ningún daño.',
      'imagen': 'inalcanzable.jpg'
    },
  ];

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
            ),
          );
        },
      ),
    );
  }
}
