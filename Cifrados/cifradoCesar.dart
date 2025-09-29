
String descodificar(String codigo){
  var mensaje = codigo.codeUnits;
  var solucion =[];
  for(var numero in mensaje){
    solucion.add(String.fromCharCode(numero -3));
  }
  return solucion.join();
}
void main(){
  String codigo = "Zlqjduglxp#Ohylrvd";
  print(descodificar(codigo));
}