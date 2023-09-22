import 'package:flutter/material.dart';

class HolaPage extends StatelessWidget {
  final String nombre;
  final String apellidoPaterno;
  final String apellidoMaterno;
  final String telefono;
  final String correo;
  final String edad;

  HolaPage({
    required this.nombre,
    required this.apellidoPaterno,
    required this.apellidoMaterno,
    required this.telefono,
    required this.correo,
    required this.edad,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nombre(s): $nombre"),
            Text("Apellido Paterno: $apellidoPaterno"),
            Text("Apellido Materno: $apellidoMaterno"),
            Text("Teléfono: $telefono"),
            Text("Correo electrónico: $correo"),
            Text("Edad: $edad"),
          ],
        ),
      ),
    );
  }
}
