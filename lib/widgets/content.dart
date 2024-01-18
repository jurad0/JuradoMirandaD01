import 'package:flutter/material.dart';
import 'nav.dart';
import 'componentes.dart';
import 'contador.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        const Nav(),
        SizedBox(
          height: MediaQuery.of(context).size.height - 112,
          child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Componente1(),
                Componente2(),
              ]),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(255, 111, 190, 254),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Contador(),
            ],
          ),
        )
      ]),
    );
  }
}
