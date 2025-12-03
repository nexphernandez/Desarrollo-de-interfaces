import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State {
  bool _big = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Implicit Animation: AnimatedContainer")),
        body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: _big ? 200:100,
            height: _big ? 200:100,
            color: _big ? Colors.blue : Colors.red,
            curve: Curves.easeInOut,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: () {
            setState(() {
              _big = !_big;
            });
          },
        ),
      ),
    );
  }
}
