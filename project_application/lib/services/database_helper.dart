import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:project_application/models/usuario.dart';


class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() => _instance;
  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }


  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'dmc_app.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE usuarios (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nombreUsuario TEXT UNIQUE,
        password TEXT
      )
    ''');
    await db.execute('''
      CREATE TABLE progreso_misiones (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        usuario_id INTEGER,
        mision_index INTEGER,
        completado INTEGER
      )
    ''');
    await db.execute('''
      CREATE TABLE progreso_logros (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        usuario_id INTEGER,
        logro_index INTEGER,
        completado INTEGER
      )
    ''');
    await db.execute('''
      CREATE TABLE progreso_orbes (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        usuario_id INTEGER,
        descripcion TEXT
      )
    ''');
  }

  // REGISTRAR USUARIO
  Future<int> registerUser(Usuario usuario) async {
    final db = await database;
    return await db.insert('usuarios', usuario.toMap());
  }

  // LOGIN DE USUARIO
  Future<Usuario?> loginUser(String nombreUsuario, String password) async {
    final db = await database;
    final result = await db.query(
      'usuarios',
      where: 'nombreUsuario = ? AND password = ?',
      whereArgs: [nombreUsuario, password],
    );

    if (result.isNotEmpty) {
      return Usuario.fromMap(result.first);
    }
    return null;
  }

  // VERIFICAR SI EXISTE UN USUARIO
  Future<bool> userExists(String nombreUsuario) async {
    final db = await database;
    final result = await db.query(
      'usuarios',
      where: 'nombreUsuario = ?',
      whereArgs: [nombreUsuario],
    );
    return result.isNotEmpty;
  }
  // MISIONES
  Future<List<int>> getMisionesCompletadas(int usuarioId) async {
    final db = await database;
    final result = await db.query(
      'progreso_misiones',
      where: 'usuario_id = ? AND completado = 1',
      whereArgs: [usuarioId],
    );
    return result.map((e) => e['mision_index'] as int).toList();
  }

  Future<void> setProgresoMision(int usuarioId, int misionIndex, bool completado) async {
    final db = await database;
    final exists = await db.query(
      'progreso_misiones',
      where: 'usuario_id = ? AND mision_index = ?',
      whereArgs: [usuarioId, misionIndex],
    );

    if (exists.isNotEmpty) {
      await db.update(
        'progreso_misiones',
        {'completado': completado ? 1 : 0},
        where: 'usuario_id = ? AND mision_index = ?',
        whereArgs: [usuarioId, misionIndex],
      );
    } else {
      await db.insert('progreso_misiones', {
        'usuario_id': usuarioId,
        'mision_index': misionIndex,
        'completado': completado ? 1 : 0,
      });
    }
  }
  //LOGROS
  Future<List<int>> getLogrosCompletados(int usuarioId) async {
    final db = await database;
    final result = await db.query(
      'progreso_logros',
      where: 'usuario_id = ? AND completado = 1',
      whereArgs: [usuarioId],
    );
    return result.map((e) => e['logro_index'] as int).toList();
  }

  Future<void> setProgresoLogro(int usuarioId, int logroIndex, bool completado) async {
    final db = await database;
    final exists = await db.query(
      'progreso_logros',
      where: 'usuario_id = ? AND logro_index = ?',
      whereArgs: [usuarioId, logroIndex],
    );

    if (exists.isNotEmpty) {
      await db.update(
        'progreso_logros',
        {'completado': completado ? 1 : 0},
        where: 'usuario_id = ? AND logro_index = ?',
        whereArgs: [usuarioId, logroIndex],
      );
    } else {
      await db.insert('progreso_logros', {
        'usuario_id': usuarioId,
        'logro_index': logroIndex,
        'completado': completado ? 1 : 0,
      });
    }
  }
  //ORBES
  Future<List<String>> getOrbesRecolectados(int usuarioId) async {
    final db = await database;
    final result = await db.query(
      'progreso_orbes',
      where: 'usuario_id = ?',
      whereArgs: [usuarioId],
    );
    return result.map((e) => e['descripcion'] as String).toList();
  }

  Future<void> toggleOrbFragment(int usuarioId, String descripcion) async {
    final db = await database;
    final existing = await db.query(
      'progreso_orbes',
      where: 'usuario_id = ? AND descripcion = ?',
      whereArgs: [usuarioId, descripcion],
    );

    if (existing.isNotEmpty) {
      await db.delete(
        'progreso_orbes',
        where: 'usuario_id = ? AND descripcion = ?',
        whereArgs: [usuarioId, descripcion],
      );
    } else {
      await db.insert('progreso_orbes', {
        'usuario_id': usuarioId,
        'descripcion': descripcion,
      });
    }
  }

  //Obtener usuario por ID
  Future<Usuario?> getUserById(int id) async {
    final db = await database;
    final result = await db.query(
      'usuarios',
      where: 'id = ?',
      whereArgs: [id],
    );
    if (result.isNotEmpty) {
      return Usuario.fromMap(result.first);
    }
    return null;
  }

}
