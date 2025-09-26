String presentacion(String nombre, {int edad = 0}){
  return "Me llamo $nombre y tengo $edad años";
}

void main(){
  print(presentacion("Nicolas"));
  print(presentacion("Nicolas", edad : 28));
}