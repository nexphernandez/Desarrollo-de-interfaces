//Ejercicio1
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
}