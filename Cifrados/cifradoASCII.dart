String decodificar(String codigo){
  var array = codigo.split(' ');
  var solucion = [];
  for (var numero in array){
    solucion.add(String.fromCharCode(int.parse(numero) -1));
  }
  return solucion.join();
}

void main(){
  String codigo = "82 118 102 32 109 98 32 103 118 102 115 98 32 117 102 32 98 110 112 106 122 111 98 111 102";
  print(decodificar(codigo));
}