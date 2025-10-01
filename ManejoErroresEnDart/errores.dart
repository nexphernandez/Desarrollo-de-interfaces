//Ejercicio1
void dividir(int a, int b) {
  if (b == 0) {
    throw ArgumentError('Error: división por cero');
  }
  print(a / b);
}

//Ejercicio4
void abrirArchivo() {
  print("📂 Archivo abierto");
  throw Exception("Error al leer archivo");
}

//Ejercicio 5
void dividirPersonalizado(int a, int b) {
  if (b == 0) {
    throw DivisionPorCeroError();
  }
  print(a / b);
}
class DivisionPorCeroError implements Exception{
  @override
  String toString() => "🚫 División prohibida";
}

//Ejercicio6
Future<void> cargarDatos() async {
  await Future.delayed(Duration(seconds: 1));
  throw "Fallo de conexion";
}
void cargar() async {
  try {
    await cargarDatos();
  } catch(e){
    print("No se pudieron cargar los datos");
  }
}

void main() {
  //Ejercicio1
  try {
    dividir(10, 0);
  } catch (e){
    print(e);
  }

  //Ejercicio2
  var lista = [1, 2, 3];

  try {
    print(lista[5]);
  } on RangeError catch(e){
    print('¡Error! Indice fuera de rango: ${e.message}');
  }

  //Ejercicio3
  try {
    var numero = int.parse("abc"); 
    print(numero);
  } on FormatException catch(e){
    print('Error de formato: ${e.message}');
  }

  //Ejecicio4
  try {
    abrirArchivo();
  } catch(e){
    print(e);
  } finally{
    print('Archivo cerrado');
  }

  //Ejercicio5
  try {
    dividirPersonalizado(8, 0);
  } catch(e){
    print(e);
  }

  //Ejercicio6
  cargar();
}

