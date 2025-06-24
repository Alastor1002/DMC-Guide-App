import 'package:flutter/foundation.dart';

class UsuarioProvider with ChangeNotifier {
  int? _id;
  String _nombre = '';

  int? get id => _id;
  String get nombre => _nombre;

  void setUsuario({required int id, required String nombre}) {
    _id = id;
    _nombre = nombre;
    notifyListeners();
  }

  void clear() {
    _id = null;
    _nombre = '';
    notifyListeners();
  }

  bool get isLoggedIn => _id != null;
}
