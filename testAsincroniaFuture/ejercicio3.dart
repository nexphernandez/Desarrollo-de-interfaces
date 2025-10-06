import 'dart:io';

Future<void> main() async {
  final file = File('registro.txt');
  final fecha = DateTime.now();
  file.writeAsString("$fecha \n", mode:   FileMode.append);
  print("Guardado correctamente");
}