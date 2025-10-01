import 'dart:collection';

void main() {
  //Ejercicio1
  List<int> alumnos =[3,5,7,9,1,6];
  alumnos.add(2);
  int primero = alumnos.first;
  int ultimo = alumnos.last;
  print('$primero $ultimo');
  int suma = alumnos.reduce((value, element) => value + element);
  double media = suma/alumnos.length;
  print(media);

  //Ejercicio2
  Set<String> correos = {"ana@mail.com", "luis@mail.com", "ana@mail.com", "pedro@mail.com"};
  print(correos);
  correos.add("nicolas@gmail.com");
  print(correos);
  print(correos.contains("luis@mail.com"));

  //Ejercicio3
  Map productos = {"pan": 1.0, "leche": 1.5, "huevos": 2.0};
  print(productos["leche"]);
  productos["cafe"]= 3.0;
  productos.forEach((clave,valor){
    print('$clave:$valor');
  });

  //Ejercicio4
  Queue<String> tareas= Queue<String>.from([
    "Lavar platos", "Hacer compra", "Estudiar"
  ]);
  print(tareas);
  tareas.removeFirst();
  print(tareas);
  tareas.add("Pasear perro");
  print(tareas);

  //Ejercicio
  SplayTreeSet<int> numeros = SplayTreeSet<int>();
  numeros.addAll([5,3,9,1,4]);
  print(numeros);
  numeros.remove(3);
  print(numeros);
}