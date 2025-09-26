String saludar(String nombre, [String? apellido]){
  return "Hola $nombre ${apellido ?? ""}";
}

void main(){
  print (saludar("Nico"));
  print (saludar("Nico","Exposito"));
}