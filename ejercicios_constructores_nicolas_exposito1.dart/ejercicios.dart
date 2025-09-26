//Ejercicio1
class Pelicula {
  String? titulo ;
  int? anio;
  Pelicula(this.titulo, this.anio);
}
//Ejercicio2
class Tarea {
  String? descripcion;
  bool? completada;

  Tarea(this.descripcion, this.completada);
  Tarea.incompleta(this.descripcion):completada=false;
}
//Ejercicio3
class Circulo{
  double radio;
  double? area;

  Circulo(this.radio): area = 3.14 *radio *radio;
}
//Ejercicio4
class Mensaje{
  String? texto;
  String prioridad;

  Mensaje(this.texto, {this.prioridad= "normal"});
}
//Ejercicio5
class Moneda{
  final String? codigo, simbolo;
  const Moneda(this.codigo, this.simbolo);
}
//Ejercicio6
class Alumno{
  String nombre;
  int nota;

  Alumno(this.nombre, this.nota);

  Alumno.aprobado(String nombre): this(nombre,5);
}
//Ejercicio7
class Sesion{
  static final Sesion _instancia = Sesion._interna();

  factory Sesion(){
    return _instancia;
  }
  Sesion._interna();
}
void main(){
  //ejercicio 1
  var pelicula = Pelicula("Ted", 2020);
  print("${pelicula.titulo}, ${pelicula.anio}");

  //ejercicio 2
  var tarea1 = Tarea('Hacer la tarea', true);
  var tarea2 = Tarea.incompleta('Sacar la basura');
  print("${tarea1.descripcion},${tarea1.completada}");
  print("${tarea2.descripcion},${tarea2.completada}");

  //ejercicio 3
  var circulo = Circulo(5);
  print("El area del ciruclo es: ${circulo.area}");

  //ejercicio 4
  var mensaje1 = Mensaje("Hola soy un mensaje");
  var mensaje2 = Mensaje("Hola soy un mensaje nuevo", prioridad: "urgente");
  print("${mensaje1.texto} , prioridad: ${mensaje1.prioridad}");
  print("${mensaje2.texto} , prioridad: ${mensaje2.prioridad}");

  // ¡ejercicio 5
  var moneda1 = const Moneda("USD", "\$");
  var moneda2 = const Moneda("USD", "\$");
  print(identical(moneda2, moneda1));

  //ejercicio6
  var alumno1 =Alumno("Nico", 7);
  var alumno2 =Alumno.aprobado("David");
  print("${alumno1.nombre} , ${alumno1.nota}");
  print("${alumno2.nombre} , ${alumno2.nota}");

  //ejercicio7
  var sesion1 = Sesion();
  var sesion2 = Sesion._interna();
  print(identical(sesion1, sesion2));
}