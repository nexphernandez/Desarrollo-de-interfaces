import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TarjetaMinimaScreen(),
    );
  }
}

class TarjetaMinimaScreen extends StatelessWidget {
  const TarjetaMinimaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarjeta Mínima'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.credit_card,
              size: 80,
              color: Colors.blueAccent,
            ),const Text("Hola"),
            const SizedBox(height: 20),
            const Text(
              '¡Bienvenido a tu tarjeta!',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('¡Botón presionado!'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              child: const Text('Presiona aquí'),
            ),
          ],
        ),
      ),
    );
  }
}