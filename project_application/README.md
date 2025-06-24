# DMC Guide – Devil May Cry App (Flutter)

Una aplicación informativa y funcional para fanáticos de **Devil May Cry**, desarrollada con **Flutter**. Diseñada para explorar logros y misiones del *DMC 1*, con el objetivo de expandirse a más títulos de la saga.  

**📦 Nombre del paquete:** `com.nico.dmcguide`

---

## 📌 Descripción del Proyecto

**DMC Guide** ofrece una experiencia interactiva centrada en la saga Devil May Cry. Permite visualizar misiones, logros, recolectar orbes y más. Incluye personalización de tema, sonidos y una encuesta de usabilidad para evaluar la experiencia del usuario.

---

## ✅ Requerimientos principales / Funcionalidades

- ✅ Splash Screen
- ✅ Navegación por juegos (actualmente: *Devil May Cry 1*)
- ✅ Sistema de logros marcables
- ✅ Lista de misiones con orbes recolectables
- ✅ Sistema de temas (Dante y Vergil)
- ✅ Sonido personalizable (con opción de silenciar)
- ✅ Encuesta de retroalimentación del usuario con exportación a `.txt` y opción para compartir
- ✅ Pantalla de perfil con nombre, avatar, y estadísticas
- ✅ Persistencia local de datos (Provider + SharedPreferences + SQLite)

---

## 🛠 Tecnologías usadas

- **Flutter** 3.19+
- **Provider** – Gestión de estado
- **Sqflite** – Persistencia local de usuarios
- **SharedPreferences** – Preferencias del usuario
- **Audioplayers** – Reproducción de sonidos
- **ImagePicker** – Carga de avatar de usuario
- **Share Plus** – Compartir archivo de encuesta
- **Path Provider** – Generación de archivos temporales

---

## 🎮 Características visuales

- Interfaz visual inspirada en la estética de *Devil May Cry*
- Temas dinámicos: Dante (rojo) y Vergil (azul)
- Animaciones, sonidos y diseño responsivo

---

## 📂 Estructura del proyecto

- `main.dart`: Punto de entrada de la app. Configura los temas, rutas y providers.
- `entity/`: Entidades relacionadas con el contenido del juego:
  - `achievement.dart`: Modelo de logros.
  - `mission.dart`: Modelo de misiones.
  - `orb_fragment_data.dart`: Datos de fragmentos de orbes.
  - `soundmager.dart`: Gestión de sonidos personalizados.
- `models/`: Modelos de datos generales:
  - `usuario.dart`: Representación de usuarios.
  - `preguntas.dart`: Modelo para la encuesta de usabilidad.
- `provider/`: Proveedores de estado:
  - `usuario_provider.dart`: Estado del usuario autenticado.
  - `theme_provider.dart`: Gestión del tema visual (Dante/Vergil).
- `screen/`: Contiene todas las pantallas principales:
  - Home, Perfil, Preferencias, Encuesta, About, Splash, etc.
- `services/`: Servicios de backend local:
  - `database_helper.dart`: Acceso y lógica SQLite.
  - `session_manager.dart`: Control de sesión de usuario con SharedPreferences.
- `themes/`: Definición de temas visuales:
  - `themeDante.dart`, `themeVergil.dart`: Paletas de colores personalizadas.
- `assets/`: Recursos estáticos:
  - Imágenes (`images/`), sonidos (`sounds/`) y archivos de configuración (`data/preguntas.json`).

---

## 📸 Capturas de Pantalla

### Inicio y navegación
![Inicio Sesion](/screenshoots/login.png)
![Menú Principal](/screenshoots/home.png)

### Misiones y Logros
![Misiones](/screenshoots/misiones.png)
![Logros](/screenshoots/logros.png)
![Orbes Azules](/screenshoots/orbes.png)

### Preferencias y Encuesta
![Preferencias](/screenshoots/preferencias.png)
![Perfil](/screenshoots/perfil.png)

---

## 📥 APK para instalación

🔗 [Descargar APK](https://drive.google.com/file/d/1AFG8PWYT90bUrTn9uhv-VOcT5_SUkfLl/view?usp=sharing)  

---

## 🎥 Video de exposición

🔗 [Ver presentación en YouTube](https://youtu.be/ucFcMiCPdOE)  

---

## 🔗 Repositorio

[GitHub - DMC Guide App](https://github.com/Alastor1002/DMC-Guide-App/tree/main/project_application)

---

## 💬 Autor

**José Nicolás Migueles Marambio**  
Correo: jmigueles21@alumnos.utalca.cl

---

