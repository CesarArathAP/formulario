import 'package:flutter/material.dart';
import 'hola.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormularioPage(), // Establece la página inicial como FormularioPage
    );
  }
}

class FormularioPage extends StatefulWidget {
  @override
  _FormularioPageState createState() => _FormularioPageState();
}

class _FormularioPageState extends State<FormularioPage> {
  TextEditingController nombreController = TextEditingController();
  TextEditingController apellidoPaternoController = TextEditingController();
  TextEditingController apellidoMaternoController = TextEditingController();
  TextEditingController telefonoController = TextEditingController();
  TextEditingController correoController = TextEditingController();
  TextEditingController edadController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulario"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nombreController,
              decoration: InputDecoration(labelText: "Nombre(s)"),
            ),
            TextField(
              controller: apellidoPaternoController,
              decoration: InputDecoration(labelText: "Apellido Paterno"),
            ),
            TextField(
              controller: apellidoMaternoController,
              decoration: InputDecoration(labelText: "Apellido Materno"),
            ),
            TextField(
              controller: telefonoController,
              decoration: InputDecoration(labelText: "Teléfono"),
            ),
            TextField(
              controller: correoController,
              decoration: InputDecoration(labelText: "Correo Electrónico"),
            ),
            TextField(
              controller: edadController,
              decoration: InputDecoration(labelText: "Edad"),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navegar a la página de resultados y pasar los datos como parámetros
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HolaPage(
                      nombre: nombreController.text,
                      apellidoPaterno: apellidoPaternoController.text,
                      apellidoMaterno: apellidoMaternoController.text,
                      telefono: telefonoController.text,
                      correo: correoController.text,
                      edad: edadController.text,
                    ),
                  ),
                );
              },
              child: Text("Enviar Datos"),
            ),
          ],
        ),
      ),
    );
  }
}
