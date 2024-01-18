import 'package:flutter/material.dart';
import '../widgets/nav.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Nav(),
            Text(
              'Jurado',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Desarrollador Flutter',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '¡Hola! Soy Jurado, un apasionado desarrollador Flutter (Mentira). Me encanta crear aplicaciones increíbles utilizando esta increíble tecnología (Ni jarto de vino).',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
