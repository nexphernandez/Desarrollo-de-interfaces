import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const FirstPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fotos historicas')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => SecondPage()),
            ),
            child: Hero(
              tag: "HeroImagen",
              child: Column(
                children: [
                  Text(
                    "Bienvenido 👋",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Toca la tarjeta para ver mas detalles en otra pantalla",
                  ),
                  SizedBox(height: 60),
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(16),
                    child: Image.asset(
                      "assets/images/berlin.png",
                      width: 300,
                      height: 130,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pantalla 2')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: GestureDetector(
          onTap: () => Navigator.pop(context, true),
          child: Hero(
            tag: "demoHero",
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(16),
                  child: Image.asset(
                    "assets/images/berlin.png",
                    width: double.infinity,
                    height: 430,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  "Konrad Schuman",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'La imagen muestra a Konrad Schumann, un joven guardia de Alemania Oriental, '
                  'en el instante en que salta sobre el alambre fronterizo que marcaba el '
                  'inicio de la construcción del Muro de Berlín, levantado por la Alemania comunista, '
                  'para escapar hacia Berlín Oeste en 1961.',
                  textAlign: TextAlign.justify,
                ),
                OutlinedButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: Text("Volver"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
