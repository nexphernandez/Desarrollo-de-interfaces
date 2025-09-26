nombresMayuscula(List<String>nombres){
  return nombres.forEach((nombre)=> print(nombre.toUpperCase()));
}

void main(){
  List<String>nombres = ["nico", "david"];
  nombresMayuscula(nombres);
}