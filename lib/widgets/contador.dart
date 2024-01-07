import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Contador extends StatefulWidget {
  const Contador({Key? key}) : super(key: key);

  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int _contador = 13;

  void _incrementar() {
    setState(() {
      _contador++;
    });
  }

  void _reset() {
    setState(() {
      _contador = 13;
    });
  }

  void _decrementar() {
    setState(() {
      _contador--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _contador.toString(),
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 330,
                fontWeight: FontWeight.w100,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              width: 500,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: _incrementar,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 144, 205, 255),
                      foregroundColor: Color.fromARGB(255, 255, 255, 255),
                      padding: EdgeInsets.all(20),
                      shape: CircleBorder(
                        side: BorderSide(
                          width: 2.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    child: Text(
                      "+1",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w100,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _reset,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 144, 205, 255),
                      foregroundColor: Color.fromARGB(255, 255, 255, 255),
                      padding: EdgeInsets.all(25),
                      shape: CircleBorder(
                        side: BorderSide(
                          width: 2.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    child: Icon(Icons.refresh),
                  ),
                  ElevatedButton(
                    onPressed: _decrementar,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 144, 205, 255),
                      foregroundColor: Color.fromARGB(255, 255, 255, 255),
                      padding: EdgeInsets.all(20),
                      shape: CircleBorder(
                        side: BorderSide(
                          width: 2.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    child: Text(
                      "-1",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w100,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
