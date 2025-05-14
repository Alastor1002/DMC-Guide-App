import 'package:flutter/material.dart';

class BlueOrbScreen extends StatelessWidget {
  const BlueOrbScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, List<String>> orbData = {
      'Prólogo de la Misión 1':[
        'Fragmento #1: Antes de pasar por debajo de un pequeño puente, salta sobre la pared para llegar a la cima y luego entra en la pequeña torre de la izquierda.'
      ],
      'Misión 1': [
        'Fragmento #2: En la Sala Principal, en un espacio cerrado a la izquierda de la estatua de Mundus. Se alcanza saltando de pared desde la planta baja.',
        'Fragmento #3: En la siguiente habitación, destruye las cuatro armaduras.',
        'Fragmento #4: En el charco de agua a la derecha de la puerta (sala con cadenas).',
        'Fragmento #5: Sube al ala derecha del avión tras desbloquear las puertas azules.',
      ],
      'Misión 2': [
        'Fragmento #6: Al inicio, gira a la derecha y entra en la sala con la Estatua de la Divinidad. Rompe la mesa a su izquierda.'
      ],
      'Misón 3' : [
        'Fragmento #7: Tras la pelea submarina, vuelve al otro lado del puente por las plataformas o el camino bajo el agua',
        'Fragmento #8: Desde el castillo, salta por la pared al porche sobre la puerta. Usa Stinger hacia el puente para alcanzar el fragmento.',
        'Fragmento #9 (Misión Secreta #1): Después de vencer a Phantom, vuelve al puente roto y salta al agua.'
      ],
      'Misión 4': [
      'Fragmento #10 (Misión Secreta #2): Al inicio, regresa a la Catedral por la estatua/puerta. Equipa tus pistolas y elimina 100 miniarañas dentro del tiempo.',
      'Fragmento #11 (Misión Secreta #3): Tras completar la Misión Secreta #2, entra en la sala con la Estatua de la Divinidad. No puedes usar armas; aplasta las arañas corriendo.',
      'Fragmento #12 (Misión Secreta #4): Tras vencer a Shadow, regresa al pasillo circular y cruza la puerta opuesta a la pintura para volver a la sala del avión.'
      ],
      'Misión 5': [
      'Fragmento #13: Desde lo alto de la torre cuadrada, activa Devil Trigger y usa el Ataque Aéreo para flotar hasta la torre pequeña frente a la pasarela. También puedes intentar saltar desde la pasarela, aunque es más difícil.'
      ],
      'Misión 6': [
      'Fragmento #14: Al comenzar la misión, ve a la derecha por un pasillo sin salida. Entra en el nicho a la izquierda (pared rota) y quédate ahí o salta un poco para liberar el fragmento.'
      ],
      'Prólogo de Misión 8': [
      'Fragmento #15 (Misión Secreta #5): Retrocede por el dormitorio y sube por la torre hasta la sala donde encontraste la última llave oxidada en la Misión 6.'
      ],
      'Misión 8': [
      'Fragmento #16: Después de vencer a Phantom, no saltes por la cornisa. Usa Stinger para alejarte y caer en una plataforma con el fragmento. También puedes llegar desde el patio del Tridente, saltando desde la estatua del caballo.',
      'Fragmento #17: Tras usar el Tridente, baja corriendo a la habitación antes de que se cierre la puerta metálica. No avances; salta por la barandilla hacia el charco de agua a la derecha.'
      ],
      'Misión 9': [
      'Fragmento #18: Tras bajar por la escalera de caracol, ve a la derecha (desde la entrada, según la cámara) y ataca una lápida hasta que se mueva y revele el fragmento.'
      ],
      'Misión 11': [
      'Fragmento #19 (Misión Secreta #6): Al iniciar la misión, da la vuelta y regresa por la puerta.',
      'Fragmento #20: En el patio con un árbol grande y dos invernaderos de cristal, ve al extremo izquierdo del invernadero. El fragmento está sobre un pedestal. Accede a él saltando por una pared desde una cornisa y cruzando un agujero en el invernadero.',
      'Fragmento #21: Baja al foso entre la entrada y el árbol, y elimina a los Blades. También hay una Estatua de la Divinidad y un muro débil que puedes destruir para liberar más Cuchillas. El fragmento aparecerá en el centro de la sala una vez que hayas eliminado todas las Cuchillas.'
      ],'Misión 12': [
      'Fragmento #22: En el nivel superior del tercer mástil, usa la habilidad Stinger para saltar hacia la proa del barco. Deberías aterrizar en la proa y recibir el fragmento.'
      ],
      'Misión 13': [
      'Fragmento #23: Después de recoger el Bastón de Hermes y cuando la cabaña se inunde, sal por el respiradero y combate contra las Espadas para desbloquear la salida. Pero antes, nada por el agujero a tu izquierda al salir del respiradero, junto al lugar donde encontraste la Pistola de Agujas.'
      ],
      'Prólogo de Misión 14': [
      'Fragmento #24 (Misión Secreta #7): Regresa al interior de la nave, cruza el conducto de ventilación y entra en la cabina del capitán para interactuar con él.',
      'Fragmento #25: Al salir del barco y saltar al agua, salta al charco en el otro lado. El fragmento es visible desde lejos y difícil de pasar por alto.'
      ],
      'Misión 14': [
      'Fragmento #26: Tras subir por el ascensor, haz un doble salto por las escaleras para llegar a una plataforma elevada a la derecha y recuperar el fragmento.',
      'Fragmento #27: En la zona del acantilado con enemigos y tres entradas, toma la del medio, sube por las plataformas y cruza el puente. Verás una estatua de Orbes Rojos a la izquierda; salta a una plataforma a la derecha para obtener el fragmento.'
      ],
      'Misión 15': [
      'Fragmento #28 (Misión Secreta #8): Retrocede hasta la zona de la cascada, baja por el ascensor y ve a la derecha (a la izquierda de Dante). Examina el grabado de calavera al final del pasillo, antes de la zona de las púas.',
      'Fragmento #29: Después de la puerta con el emblema del Escudo Azul, recoge la Luminita y salta a la plataforma arriba para obtener Orbes Rojos. Baja las escaleras, elimina a los enemigos y destruye la pared débil. Rompe toda la basura en la siguiente sala para obtener el fragmento.',
      'Fragmento #30: Al final del área tras el Emblema del Escudo Rojo, no agarres el objeto brillante del pedestal (arma beta de Pesadilla o Par de Lanzas). Salta al foso, elimina a los enemigos y salta por la pared bajo la plataforma con el objeto brillante. Esto liberará el fragmento que podrás recoger subiendo a la plataforma. No lo tomes hasta conseguir el fragmento.',
      'Fragmento #31: Abre la puerta con las lanzas para entrar al Coliseo. No vayas al centro; toma uno de los ascensores laterales. Corre por la parte superior del puente. El fragmento aparecerá en la sección de cristal del centro. También encontrarás orbes verdes y un orbe amarillo en los muros superiores del Coliseo.'
      ],'Misión 16': [
      'Orbe Azul Completo #1: Al comienzo de la misión, junto al ascensor.',
      'Fragmento #32 (Misión Secreta #9): Tras salir del Coliseo, vuelve directamente al interior.',
      'Fragmento #33: De regreso al salón principal del castillo (como en la Misión 1), el fragmento está debajo de las escaleras del lado derecho.',
      'Fragmento #34: En la sala principal, flotando entre la estatua del caballo y la Estatua de la Divinidad. Usa Ataque Aéreo o Aguijón desde la cabeza del caballo o desde la estatua.',
      'Fragmento #35: En el pasillo circular tras la sala del avión. Ve a la izquierda y salta frente al cuadro, junto a la puerta que lleva a la sala pequeña con una Estatua de la Divinidad.',
      'Fragmento #36 (Misión Secreta #10): Después de vencer a Nightmare, regresa a la sala del avión y derrota a 4 Shadows (2 en la sala del avión, 1 en la sala principal y 1 en la sala de las 4 armaduras usando la puerta roja).',
      'Fragmento #37: Después de usar el Bastón de Hermes, salta al espejo de la derecha. El fragmento está junto a la cama.'
      ],
      'Misión 17': [
      'Fragmento #38 (Misión Secreta #11): Al comenzar la misión, regresa por el teletransportador. Cruza el puente roto sin caer al agua.',
      'Fragmento #39: Después de derrotar al Dragón, salta por la pared hasta el piso superior, sobre la entrada. Ve a la derecha para encontrar un balcón exterior y colócate en el centro para liberar el fragmento.'
      ],
      'Misión 18': [
      'Fragmento #40: Bajo el agua, explora las salas y dispara a los barriles para liberar orbes rojos. La última celda a la izquierda tiene un solo barril que oculta el fragmento.',
      'Fragmento #41: Al salir del agua, llegarás a una torre conocida. Activa el interruptor circular para inundar la zona y nada justo por encima de la primera plataforma saliente para aterrizar en ella cuando el agua se drene.',
      'Fragmento #42: Antes de iniciar la batalla contra Pesadilla en el patio con la fuente y la estatua de león, sube al nivel superior y cruza la puerta. Sigue el pasillo hasta el fragmento al final.'
      ],
      'Misión 19': [
      'Fragmento #43: Tras salir del dormitorio por el espejo, llegarás al Patio reflejado donde enfrentaste a Nelo Angelo. Haz un salto de pared junto a la puerta para subir al nivel superior. Verás el fragmento flotando junto a una torre cuadrada. Haz un doble salto sobre ella y déjate caer por el otro lado para recogerlo.',
      'Fragmento #44: Vuelve a la cima de la torre cuadrada y usa Ataque Aéreo para flotar hacia la torre delgada al otro lado, en la misma ubicación reflejada del fragmento de la Misión 5.'
      ],
      'Misión 21': [
      'Orbe Azul Completo #2 (Misión Secreta #12): Desde la sala con la Estatua de la Divinidad, examina la pared frente a ella para abrir un pasadizo secreto. Sigue siempre el camino de la derecha. Enfrenta a enemigos incorpóreos y recoge el Orbe Azul en una de las arenas. Al llegar a una puerta verde, destruye la estatua de Orbe Rojo, sube por las plataformas y derrota al dragón (solo con ataques cuerpo a cuerpo). Derrota a los enemigos siguientes para que aparezcan nuevas plataformas. Sube hasta encontrar el Brazalete del Tiempo.'
      ],
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Fragmentos de Orbes Azules'),
      ),
      body: ListView(
        children: orbData.entries.map((entry) {
          return ExpansionTile(
            title: Text(entry.key, style: const TextStyle(fontWeight: FontWeight.bold)),
            children: entry.value.map((desc) => ListTile(title: Text(desc))).toList(),
          );
        }).toList(),
      ),
    );
  }
}
