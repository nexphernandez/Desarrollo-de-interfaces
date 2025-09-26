int suma(List<int>numeros){
  int resultado = numeros.reduce((sumatoria,numero){
    return sumatoria + numero;
  } );
  return resultado;
}

void main(){
  List<int>numeros = [1,2,3,4];
  print(suma(numeros));
}