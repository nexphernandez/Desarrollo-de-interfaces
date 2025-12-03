import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

void main() {
  runApp(const BotonSaltarinApp());
}

class BotonSaltarinApp extends StatelessWidget {
  const BotonSaltarinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: JuegoBotonSaltarin(),
    );
  }
}

// ---------------- CONTROLADOR ----------------

class GameController {
  int puntos = 0;
  int tiempo = 15;

  double top = 100;
  double left = 100;

  final Random random = Random();

  // TODO: Crear método para mover el botón
  // usando un lienzo de 900 x 500

  // TODO: Crear getters:
  //  - tiempoTerminado
  //  - haGanado
}

// --------------- WIDGET PRINCIPAL ----------------

class JuegoBotonSaltarin extends StatefulWidget {
  const JuegoBotonSaltarin({super.key});

  @override
  State<JuegoBotonSaltarin> createState() => _JuegoBotonSaltarinState();
}

class _JuegoBotonSaltarinState extends State<JuegoBotonSaltarin> {
  final GameController game = GameController();

  late Timer timer;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 10), (timer));
    // TODO: Iniciar Timer.periodic para reducir el tiempo
  }

  void pulsarBoton() {
    // TODO:
    // 1. Comprobar si el tiempo ha terminado
    // 2. Llamar a moverBoton()
    // 3. Usar setState()
  }

  @override
  void dispose() {
    // TODO: Cancelar el Timer
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Botón saltarín')),
      body: Stack(
        children: [

          // Información del juego
          Positioned(
            top: 30,
            left: 20,
            child: Text(
              'Tiempo: \${game.tiempo}  |  Puntos: \${game.puntos}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // BOTÓN QUE SE MUEVE
          Positioned(
              left : 10,
              top  : 20,
              child: ElevatedButton(onPressed: (){}, child: Text("data")),
            ),
          // TODO: Mostrar mensaje cuando el tiempo termine
          // y/o cuando el jugador gane
        ],
      ),
    );
  }
}