import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData(useMaterial3: true),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Material 3")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.add),
      ),
      body: Center(child: MainPage()),
    );
  }
}

class Material2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: TextField(
            decoration: InputDecoration(labelText: "Introduce tu nombre"),
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(onPressed: () => {}, child: Text("Enviar")),
      ],
    );
  }
}

class Material3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsGeometry.all(20),
            child: TextField(
              decoration: InputDecoration(labelText: "Introduce tu nombre"),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(onPressed: () => {}, child: Text("Enviar")),
        ],
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Material2Page()),
              ),
            },
            child: Text("Ir a pagina Material 2"),
          ),
          ElevatedButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Material3Page()),
              ),
            },
            child: Text("Ir a pagina Material 3"),
          ),
        ],
      ),
    );
  }
}
