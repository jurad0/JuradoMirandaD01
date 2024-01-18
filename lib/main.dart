import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/content.dart';
import 'pages/widgets.dart';
import 'pages/about.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      initialRoute: '/inicio',
      routes: {
        '/inicio': (context) => const Content(),
        '/widgets': (context) => const WidgetsPage(),
        '/about': (context) => const AboutScreen(),
      },
      home: const Scaffold(
        body: Content(),
      ),
    ),
  );
}
