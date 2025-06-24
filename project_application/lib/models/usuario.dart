class Usuario {
  final int? id;
  final String nombreUsuario;
  final String password;

  Usuario({
    this.id,
    required this.nombreUsuario,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nombreUsuario': nombreUsuario,
      'password': password,
    };
  }

  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      id: map['id'],
      nombreUsuario: map['nombreUsuario'],
      password: map['password'],
    );
  }
}
