import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mi primera app cpn Scaffold'),
          centerTitle: true,),
         body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ],
         ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final Icon icon;

  const InfoCard({required this.title, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(16),
      child: Padding(padding: EdgeInsetsGeometry.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          SizedBox(width: 10,),
          Text(title)
        ],
      )
      )
    );
  }
}

void main() {
  runApp(MyApp());
}
