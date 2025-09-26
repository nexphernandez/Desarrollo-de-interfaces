int numeroMayor(int numero1,int numero2, int numero3){
  int solucion = numero1;
  if (numero2 > solucion) {
    solucion =numero2;
  }
  if (numero3 > solucion) {
    solucion =numero3;
  }
  return solucion;
}
void main(){
  print(numeroMayor(3, 4, 5));
  print(numeroMayor(3, 7, 5));
  print(numeroMayor(9, 4, 5));
}