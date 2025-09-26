//Ejercicio1
class Temperatura{
  double celsius;
  Temperatura(this.celsius);

  double get fahrenheit => celsius *1.8 + 32;
}
//Ejercicio2
class Contrasenia{
  String _valor;
  Contrasenia(this._valor);
  set ochoCaracteres(String _nuevoValor) {
    if (_nuevoValor.length <  8) {
      _valor = "error";
    } else{
      _valor = _nuevoValor;
    }
  }
}
//Ejercicio3
class Empleado{
  String nombre;

  Empleado(this.nombre);

  void trabajar()=> print("trabajar");
}
void main(){
  //ejercicio1
  var temperatura1 = Temperatura(32);
  print("${temperatura1.celsius} , ${temperatura1.fahrenheit}");

  //ejercicio2
  var contrasenia1 = Contrasenia("15412sdafdsfersdf");
  contrasenia1.ochoCaracteres="152s";
  var contrasenia2 = Contrasenia("15412sdafdsfersdf");
  contrasenia2.ochoCaracteres="15GYUFYUILI2s";
  print(contrasenia1._valor);
  print(contrasenia2._valor);

  //ejercicio3
  
}