//Ejercicio1
import 'dart:math';

int toIntSeguro(String valor){
  try{
    return int.parse(valor);
  } catch(e){
    throw FormatException("Valor inválido: $valor");
  }
}

//Ejercicio2 
int sumarLista(List<dynamic> datos){
  int suma = 0;
  for (var dato in datos) {
    if (dato is! int) {
      throw ElementoNoEnteroException();
    }
    suma += dato;
  }
  return suma;
}
class ElementoNoEnteroException implements Exception{
  @override
  String toString() => 'ElementoNoEnteroException';
}

//Ejercicio3
int multiplicar (int? a, int? b){
  if (a == null || b == null) {
    throw ArgumentError("Los numeros no puede ser nulos");
  }
  if (a < 0 || b < 0) {
    throw Exception("No puede ser negativo");
  }
  int multiplicacion = a * b;
  return multiplicacion; 
}

//Ejercicio4
void conectar() {
  int intentos = 0;
  var random = Random();

  while (intentos < 3) {
    try {
      if (random.nextBool()) {
        print("Conexión establecida");
        break;
      } else {
        throw Exception("Fallo de red");
      }
    } catch (e) {
      print(e);
      intentos++;
      if (intentos >= 3) {
        print("No se pudo establecer la conexión después de 3 intentos");
      } else {
        print("Reintentando...");
      }
    }
  }
}

//Ejercicio5
Future<String> cargarArchivo(String nombre){
  return Future.delayed(Duration(seconds: 1), () {
  if(nombre == "config.txt"){
    return "Archivo cargado";
  }
  throw Exception("Archivo no encontrado");
  });
}

void main(){
  //Ejercicio1
  List<String>valores = ["123", "abc", "45"];
  for (var valor in valores) {
    try {
      int numero = toIntSeguro(valor);
      print("Parseado: $numero");
    } on FormatException catch(e) {
      print(e);
    } 
  }

  //Ejercicio2
  List datos = [10, 20, "hola", 5];
  try{
    print(sumarLista(datos));
  } on ElementoNoEnteroException catch(e){
    print(e);
  };

  //Ejercicio3
  try {
    print(multiplicar(null, 3));
  } catch (e) {
    print(e);
  }
  try {
    print(multiplicar(-5, 3));
  } catch (e) {
    print(e);
  }

  //Ejercicio4
  try {
    conectar();
  } catch (e) {
    print(e);
  }

  //Ejercicio5
  cargarArchivo("").then((contenido) {
    print(contenido);
  }).catchError ((error){
    print("Error : $error");
  }) ;
  
  cargarArchivo("config.txt").then((contenido) {
    print(contenido);
  }).catchError ((error){
    print("Error : $error");
  }) ;
  
}