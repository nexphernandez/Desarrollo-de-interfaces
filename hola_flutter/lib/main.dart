import 'package:flutter/material.dart';
/*
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
*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contador con estado'),
          centerTitle: true,
        ),
        body: Center(
          child: TextSliderWidget(),
        ),
      ),
    );
  }
}
class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Has pulsado $_counter veces",style: TextStyle(fontSize: 20),),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed:()=> setState(() {
            _counter++;
          }),
          child: Text("Púlsame"),
        ),
      ],
    );
  }
}
class CounterWidget extends StatefulWidget {
  @override
  State<CounterWidget> createState() =>_CounterWidgetState();

}

class _SwitchWidgetState extends State<SwitchWidget>{
  bool _isOn = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Switch (value: _isOn, onChanged: (value) {
            setState(() {
              _isOn = value;
            });
          },
        ),
        Text(
          _isOn ? 'Interruptor activado' : 'Interruptor desactivado',
        )
      ],
    );
  }

}

class SwitchWidget extends StatefulWidget{
  @override
  State<SwitchWidget> createState() {
    return (_SwitchWidgetState());
  }

}

class SliderWidget extends StatefulWidget{
  @override
  State<SliderWidget> createState() {
    return (_SliderWidgetState());
  }

}

class _SliderWidgetState extends State<SliderWidget>{
  double _value = 50.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Slider(value: _value,min: 0,max: 100, 
        onChanged: (value){
          setState(() {
          _value = value;
        });}),
        Text(
          'Valor : ${_value.toStringAsFixed(1)}',
        )
      ],
    );
  }

}

class TextSliderWidget extends StatefulWidget{
  @override
  State<TextSliderWidget> createState() {
    return (_TextSliderWidgetState());
  }

}

class _TextSliderWidgetState extends State<TextSliderWidget>{
  double _fontSize = 20.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Texto dinámico', style: TextStyle(fontSize: _fontSize), 
        ),
        Slider(value: _fontSize,min: 10,max: 60, 
        onChanged: (value){
          setState(() {
          _fontSize = value;
        });}),
        
      ],
    );
  }

}

void main() {
  runApp(MyApp());
}
