import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Componente1 extends StatelessWidget {
  const Componente1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 550,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Text(
              "APRENDE A CREAR WEBS CON FLUTTER",
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
            ),
          ),
          const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}

class Componente2 extends StatelessWidget {
  const Componente2({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 111, 190, 254)),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.only(
          left: 36.0,
          top: 16.0,
          right: 36.0,
          bottom: 16.0,
        ),
        child: Text(
          'Contador',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
        ),
      ),
    );
  }
}
