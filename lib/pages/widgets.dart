import 'package:flutter/material.dart';
import '../widgets/nav.dart';
import 'dart:convert'; // Necesario para usar jsonDecode
import 'package:flutter/services.dart'; // Necesario para cargar archivos desde assets

class WidgetsPage extends StatefulWidget {
  const WidgetsPage({super.key});

  @override
  _WidgetsPageState createState() => _WidgetsPageState();
}

class _WidgetsPageState extends State<WidgetsPage> {
  List<dynamic> widgets = [];

  // Función para cargar y decodificar el JSON desde assets
  Future<void> loadJsonData() async {
    // Lee el contenido del archivo JSON
    String data = await rootBundle.loadString('assets/json.json');

    // Decodifica el JSON y actualiza el estado del widget
    setState(() {
      widgets = jsonDecode(data)['widgets'];
    });
  }

  @override
  void initState() {
    super.initState();
    // Llama a la función para cargar el JSON cuando el widget se inicia
    loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Puedes personalizar según tus necesidades
          const Nav(),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: widgets.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const FlutterLogo(size: 50),
                      const SizedBox(height: 10),
                      Text(widgets[index]['nombre']),
                      const SizedBox(height: 5),
                      Text(widgets[index]['descripcion']),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
