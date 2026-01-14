import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ErrorHelpExample(),
    );
  }
}

class ErrorHelpExample extends StatefulWidget {
  const ErrorHelpExample({super.key});

  @override
  State createState() => _ErrorHelpExampleState();
}

class _ErrorHelpExampleState extends State {
  bool isNum = true;
  String valor = "";
  void checkNum(String value) {
    setState(() {
      isNum = int.tryParse(value) != null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Heurística 9 – Ayuda con errores')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              onChanged: (value) => valor = value,
              decoration: InputDecoration(
                labelText: "Introduce un numero entero",
                errorText: isNum ? null : "Error: Debes introducir un entero",
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => {checkNum(valor)},
              child: Text("Comprobar"),
            ),
          ],
        ),
      ),
    );
  }
}
