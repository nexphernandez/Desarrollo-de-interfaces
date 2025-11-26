import 'package:flutter/material.dart';

void main() {
  runApp(const EscapeRoomApp());
}

class EscapeRoomApp extends StatelessWidget {
  const EscapeRoomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Escape Room',
      initialRoute: '/',
      routes: {
        '/': (_) => const SalaInicial(),
        "/Pista1": (_) => const Pista1(),
        "/Victoria": (_) => const Victoria(),
        "/Atrapado": (_) => const Atrapado(),
      },
    );
  }
}

// Aquí debes crear las clases:
// - SalaInicial
// - Pista1
// - Victoria
// - Atrapado

class SalaInicial extends StatelessWidget {
  const SalaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Escape Room')),
      body: Center(
        child: Column(
          children: [
            Text('Estas en una sala secreta de Hogwatts'),
            Text('Primera Pregunta:'),
            Text('¿Cuál es la casa a la que pertenece Harry Potter?'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Atrapado");
              },
              child: const Text("Hufflepuff"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Pista1");
              },
              child: const Text("Gryffindor"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Atrapado");
              },
              child: const Text("Slytherin"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Atrapado");
              },
              child: const Text("Ravenclaw"),
            ),
          ],
        ),
      ),
    );
  }
}

class Pista1 extends StatelessWidget {
  const Pista1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pista 1')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Victoria");
              },
              child: const Text("Andén 9 3/4"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Atrapado");
              },
              child: const Text("Estación Central de Londres"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Atrapado");
              },
              child: const Text("Andén 7 1/2"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Atrapado");
              },
              child: const Text("Estación Hogsmeade Express"),
            ),
          ],
        ),
      ),
    );
  }
}

class Victoria extends StatelessWidget {
  const Victoria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Victoria')),
      body: Center(child: Column(
        children: [
          Text('Has escapado con éxito'),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/");
              },
              child: const Text("Intentar de nuevo"),
            ),
        ],
      )),
    );
  }
}

class Atrapado extends StatelessWidget {
  const Atrapado({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Game Over')),
      body: Center(child: Column(
        children: [
          Text('Has quedado atrapado'),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/");
              },
              child: const Text("Volver a jugar"),
            ),
        ],
      )),
    );
  }
}
