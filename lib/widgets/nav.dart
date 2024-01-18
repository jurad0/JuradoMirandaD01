// nav.dart
import 'package:flutter/material.dart';

class Nav extends StatelessWidget implements PreferredSizeWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize:
          const Size.fromHeight(100.0), // Ajusta la altura según tus necesidades
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16.0,
          bottom: 16.0,
          left: 220.0,
          right: 220.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlutterLogo(
                  size: 80,
                  style: FlutterLogoStyle.markOnly,
                ),
                Text(
                  "Flutter",
                  style: TextStyle(fontSize: 32),
                ),
              ],
            ),
            SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/inicio');
                    },
                    child: const Text(
                      "Inicio",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/widgets');
                    },
                    child: const Text(
                      "Widgets",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/about');
                    },
                    child: const Text(
                      "About",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
