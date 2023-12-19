import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
  const Nav({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          Container(
            width: 300,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Inicio",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Widgets",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "About",
                  style: TextStyle(fontSize: 20),
                ),
                Icon(Icons.search),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
/*
Scaffold(
        appBar: AppBar(
      title: const Text('AppBar Demo'),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.add_alert),
          tooltip: 'Show Snackbar',
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a snackbar')));
          },
        ),
        IconButton(
          icon: const Icon(Icons.navigate_next),
          tooltip: 'Go to the next page',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text('Next page'),
                  ),
                  body: const Center(
                    child: Text(
                      'This is the next page',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                );
              },
            ));
          },
        ),
      ],
    ));
  }
*/ 